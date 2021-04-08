package com.synstorm.translator.utils;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

// This class is necessary  because we need to be able to get index of a key.
public class IndexedHashMap<K, V> implements Map<K, V> {
    public IndexedHashMap()
    {
        baseMap = new HashMap<>();
        indexMap = new HashMap<>();
    }

    @Override
    public V put(K key, V value)
    {
        Integer index = baseMap.size();
        baseMap.put(key, value);
        indexMap.put(key, index);

        return value;
    }

    @Override
    public V remove(Object key) {
        V value = baseMap.remove(key);
        indexMap.remove(key);

        return value;
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> m) {
        baseMap.putAll(m);
        m.keySet().stream().forEach(key -> {indexMap.put(key, indexMap.size());});
    }

    @Override
    public void clear() {
        baseMap.clear();
        indexMap.clear();
    }

    @Override
    public Set<K> keySet() {
        return baseMap.keySet();
    }

    @Override
    public Collection<V> values() {
        return baseMap.values();
    }

    @Override
    public Set<Entry<K, V>> entrySet() {
        return baseMap.entrySet();
    }

    @Override
    public int size() {
        return baseMap.size();
    }

    @Override
    public boolean isEmpty() {
        return baseMap.isEmpty();
    }

    @Override
    public boolean containsKey(Object key) {
        return baseMap.containsKey(key);
    }

    @Override
    public boolean containsValue(Object value) {
        return baseMap.containsValue(value);
    }

    public V get(Object key)
    {
        return baseMap.get(key);
    }

    public Integer getIndex(Object key)
    {
        return indexMap.get(key);
    }


    private final Map<K,V> baseMap;
    private final Map<K, Integer> indexMap;
}
