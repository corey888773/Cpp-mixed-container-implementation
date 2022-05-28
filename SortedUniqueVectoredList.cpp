#include <string>
#include <array>
#include <stdexcept> // std::out_of_range
#include <vector>
#include <algorithm>
#include "SortedUniqueVectoredList.h"
using namespace std;


/** class SortedUniqueVectoredList::Bucket
 * @param size ilosc elementow w kubelku, tworzac pusty ma byc 0
 * @param values elementy kubelka, jako tablica statyczna
 * @param BUCKET_SIZE ilosc elementow w statycznej tablicy
 * @param bucketCount_ ilosc kubelkow
 * @param next wskaznik na nastepny @ref Bucket, a jesli takiego nie ma na nullptr
 * @param previous wskaznik na poprzedni @ref Bucket, a jesli takiego nie ma na nullptr
 * @note jest to klasa zrobiona przy pomocy [idiomu PIMPL](https://en.cppreference.com/w/cpp/language/pimpl),
 *       ktory polega na tym, ze w klasie zewnetrznej jest jedynie deklaracja klasy wewnetrznej, ktora jest zaimplementowana w pliku zrodlowym **/
struct SortedUniqueVectoredList::Bucket
{
    constexpr static size_t BUCKET_SIZE = 10;

    std::array<std::string, BUCKET_SIZE> values;
    size_t size{};

    Bucket* next = nullptr;
    Bucket* previous = nullptr;
};


SortedUniqueVectoredList::SortedUniqueVectoredList(const SortedUniqueVectoredList &source)
{
    /// @todo zaimplementuj, szczegoly w pliku naglowkowym
    copy(source);
}

SortedUniqueVectoredList::SortedUniqueVectoredList(SortedUniqueVectoredList &&another)
{
    /// @todo zaimplementuj, szczegoly w pliku naglowkowym
    this->move(std::move(another));
}

SortedUniqueVectoredList::~SortedUniqueVectoredList()
{
    free();
}

SortedUniqueVectoredList &SortedUniqueVectoredList::operator=(SortedUniqueVectoredList &&another)
{
    /// @todo zaimplementuj, szczegoly w pliku naglowkowym
    if (this != &another)
    {
        this->move(std::move(another));
    }
    return *this;
}

void SortedUniqueVectoredList::insert(const string &value)
{
    if(contains(value))
        return;
    const std::string& text2Add = value;

    size_++;
    if(head == nullptr || capacity_ < size_)
        allocate_new_bucket();

    std::vector<std::string> temp;
    Bucket *current = head;
    while(current != nullptr) {
        for (auto i = 0; i < current->size; i++)
            if (!current->values[i].empty())
                temp.push_back(current->values[i]);
        current = current->previous;
    }

    temp.push_back(text2Add);
    std::sort(temp.begin(), temp.end());


    if (tail == nullptr)
    {
        head->size ++;
        for(auto i = 0; i < head->size && i < temp.size(); i++)
            head->values[i] = temp[i];
        return;
    }

    current = tail;
    size_t iterator = 0;
    head->size ++;
    while(current != nullptr) {
        //zwiekszamy size heada

        for (auto i = 0; i < current->size && (i + iterator) < temp.size(); i++)
            current->values[i] = temp[iterator + i];
        iterator += current->size;
        current = current->next;
    }


}

void SortedUniqueVectoredList::erase(const string &value)
{
    /// @todo zaimplementuj, szczegoly w pliku naglowkowym (opcjonalne zadanie)

}

SortedUniqueVectoredList::operator std::string() const
{
    SortedUniqueVectoredList ret;
    std::string temp;

    Bucket *current = head;
    while(current != nullptr){
        for(auto i = 0; i < current->size; i++){
            temp += current->values[i];
        }
        current = current->previous;
    }
    return temp;
}

void SortedUniqueVectoredList::allocate_new_bucket()
{
    capacity_ += Bucket::BUCKET_SIZE;
    bucketCount_++;

    Bucket *temp;
    switch(bucketCount_){
        case 1:
            head = new Bucket;
            break;
        case 2:
            temp = head;
            tail = temp;
            head = new Bucket;
            tail->next = head;
            head->previous = tail;
            break;
        default:
            temp = head;
            head = new Bucket;
            temp->next = head;
            head->previous = temp;

    }
}

void SortedUniqueVectoredList::free()
{
    if(tail == nullptr && head != nullptr)
        delete head;
    else{
        Bucket *current = tail;
        while(current != nullptr){
            current = current->next;
            delete current->previous;
        }
    }
    bucketCount_ = size_ = capacity_ = 0;
}

void SortedUniqueVectoredList::move(SortedUniqueVectoredList &&another)
{
    if (this != &another)
    {
        copy(another);

        another.head = nullptr;
        another.tail = nullptr;
        another.size_ = 0;
        another.bucketCount_ = 0;
        another.capacity_ = 0;
    }

}

void SortedUniqueVectoredList::copy(const SortedUniqueVectoredList &other)
{
    this->head = other.head;
    this->tail = other.tail;
    this->size_ = other.size_;
    this->bucketCount_ = other.bucketCount_;
    this->capacity_ = other.capacity_;
}

bool SortedUniqueVectoredList::contains(const string &value) const
{
    Bucket *current = head;
    while(current != nullptr) {
        for (auto i = 0; i < current->size; i++)
            if (current->values[i] == value)
                return true;
        current = current->next;
    }
    return false;
}

SortedUniqueVectoredList SortedUniqueVectoredList::operator-(const SortedUniqueVectoredList &another) const
{
    SortedUniqueVectoredList ret;

    if(head == nullptr)
        return *this;

    Bucket *current = head;
    while(current != nullptr){
        for(auto i = 0; i < current->size; i++){
            if(!another.contains(current->values[i]))
                ret.insert(current->values[i]);}
        current = current->previous;
    }
    return ret;
}

SortedUniqueVectoredList &SortedUniqueVectoredList::operator*=(const size_t howManyTimesMultiply)
{
    if(head == nullptr)
        return *this;

    SortedUniqueVectoredList ret;
    Bucket *current = head;
    while(current != nullptr){
        for(auto i = 0; i < current->size; i++){
            std::string temp;
            for(int j = 0; j < howManyTimesMultiply; j++)
                temp += current->values[i];

            ret.insert(temp);
        }
        current = current->previous;
    }

    *this = ret;
    return *this;
}

string &SortedUniqueVectoredList::operator[](size_t index)
{
    if(head == nullptr)
        throw std::out_of_range("");

    if(tail == nullptr) {
        if (index >= head->size)
            throw std::out_of_range("");
        else
            return head->values[index];
    }

    Bucket *current = tail;
    auto bucket = index / 10;
    index %= 10;
    for(int i = 0; i < bucket; i++)
        current = current->next;

    if(current == nullptr || current->size <= index)
        throw std::out_of_range("");

    return current->values[index];
}

const string& SortedUniqueVectoredList::operator[](size_t index) const
{
    if(head == nullptr)
        throw std::out_of_range("");

    if(tail == nullptr) {
        if (index >= head->size)
            throw std::out_of_range("");
        else
            return head->values[index];
    }

    Bucket *current = tail;
    auto bucket = index / 10;
    index %= 10;
    for(int i = 0; i < bucket; i++)
        current = current->next;

    if(current == nullptr || current->size <= index)
        throw std::out_of_range("");

    return current->values[index];
}

SortedUniqueVectoredList &SortedUniqueVectoredList::operator=(const SortedUniqueVectoredList &another)
{
    if(this == &another)
        return *this;

    SortedUniqueVectoredList temp = another;
    std::swap(temp.head, this->head);
    std::swap(temp.tail, this->tail);
    std::swap(temp.size_, this->size_);
    std::swap(temp.bucketCount_, this->bucketCount_);
    std::swap(temp.capacity_, this->capacity_);

    return *this;
}
