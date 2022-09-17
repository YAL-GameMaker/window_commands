/// tiny_set.h
#pragma once
#include "stdafx.h"

template<typename T> struct tiny_set {
private:
	T* _arr;
	size_t _length;
	size_t _capacity;
public:
	tiny_set() {}
	tiny_set(size_t capacity) { init(capacity); }
	void init(size_t capacity = 4) {
		_capacity = capacity;
		_length = 0;
		_arr = malloc_arr<T>(_capacity);
	}

	static const size_t npos = MAXSIZE_T;
	size_t find(T val) {
		for (size_t i = 0; i < _length; i++) {
			if (_arr[i] == val) return i;
		}
		return npos;
	}
	inline bool contains(T val) {
		return find(val) != npos;
	}

	bool add(T val) {
		if (find(val) != npos) return false;
		if (_length >= _capacity) {
			_capacity *= 2;
			_arr = realloc_arr(_arr, _capacity);
		}
		_arr[_length++] = val;
		return true;
	}
	bool remove(T val) {
		auto i = find(val);
		if (i == npos) return false;
		_length -= 1;
		for (; i < _length; i++) _arr[i] = _arr[i + 1];
		return true;
	}
	inline bool set(T val, bool on) {
		if (on) return add(val); else return remove(val);
	}
};
