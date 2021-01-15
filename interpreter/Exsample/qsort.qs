var $d[9]

func main()
    $d[0] = 60
    $d[1] = 20
    $d[2] = 10
    $d[3] = 90
    $d[4] = 50
    $d[5] = 30
    $d[6] = 0
    $d[7] = 40
    $d[8] = 80
    $d[9] = 70

    quick_sort(0, 9)
    for i=0 to 9
        print $d[i], " "
    end
    println ""
end

func quick_sort(top, last)
    key = $d[(top+last) \ 2]
    i = top  - 1
    j = last + 1
    while 1
        i = i + 1
        while $d[i] < key
            i = i + 1
        end
        j = j - 1
        while $d[j] > key
            j = j - 1
        end
        break ? i >= j
        wk = $d[i]
        $d[i] = $d[j]
        $d[j] = wk
    end
    if top < i-1
        quick_sort(top, i-1)
    end
    if j+1 < last
        quick_sort(j+1, last)
    end
end
