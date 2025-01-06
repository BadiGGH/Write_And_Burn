#1/bin/bash
#banner
Banner(){
    bannerstr='#.....#.............................#.....................######.......................\n#..#..#.#####..#.#####.######......#.#...#....#.#####.....#.....#.#....#.#####..#....#.\n#..#..#.#....#.#...#...#..........#...#..##...#.#....#....#.....#.#....#.#....#.##...#.\n#..#..#.#....#.#...#...#####.....#.....#.#.#..#.#....#....######..#....#.#....#.#.#..#.\n#..#..#.#####..#...#...#.........#######.#..#.#.#....#....#.....#.#....#.#####..#..#.#.\n#..#..#.#...#..#...#...#.........#.....#.#...##.#....#....#.....#.#....#.#...#..#...##.\n.##.##..#....#.#...#...######....#.....#.#....#.#####.....######...####..#....#.#....#.\n.......................................................................................'
    echo -e ${bannerstr}
}
Write(){
    echo "#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#"
    echo "This is the <Write> function:"
    echo "All texts will be stored in <To_Be_Burned> txt file!"
    echo "Which of the following options intrests you:"
    echo "[1]: Write one line"
    echo "[2]: Write multiple lines"
    echo "[?]: Help"
    echo "[b]: Back"
    read write_option
    case $write_option in
        1)
            echo "#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#"
            echo "Write your one line of text:"
            read txt
            echo ${txt} >> ./TO_Be_Burned.txt
            echo "Your text stored successfully!"
            Setup
            ;;
        2)
            echo "#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#"
            echo "Write your lines of text:"
            continue_condition=Y
                while [[ $continue_condition == Y ]]
                do
                    read txt
                    echo ${txt} >> ./TO_Be_Burned.txt
                    echo "Do you want to continue writing?([Y] for Yes, anything else for No)"
                    read continue_condition
                done
            echo "Your text stored successfully!"
            Setup        
            ;;
        \?)
            echo "#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#"
            echo "Use the <Write> function to write texts in <To_Be_Burned> txt file!"
            echo "You can write one line of text by using the 1st option! (1)"
            echo "You can write several lines of text by using the 2nd option! (2)"
            echo "Note that by using the 2nd option, Whenever you press the <Enter> key,"
            echo "you should decide that you want to continue writing(y) or not(anything else)!"
            echo "Have fun while using the <Write> function!"
            Write
            ;;
        b)
            Setup
            ;;
        *)
            echo "Unknown Command! Choose between available options!"
            Write
    esac
}
Read(){
    echo "#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#"
    echo "Here you are:"
    echo "*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*"
    cat ./TO_Be_Burned.txt
    echo "*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*"
    Setup
}
Burn(){
    echo "burn"
}
Exit(){
    echo "#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#"
    echo "Bye! Come back again!"
}
Setup(){
    echo "#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#_#"
    echo "Welcome to 'Write And Burn'!" 
    echo "[1]: Write"
    echo "[2]: Read"
    echo "[3]: Burn"
    echo "[q]: Exit"
    echo "What do you want to do?"
    read setup_option
    case $setup_option in
    1)
        Write
        ;;
    2)
        Read
        ;;
    3)
        Burn
        ;;
    q)
        Exit
        ;;
    *)
        echo "Unknown Command! Please choose a number bwtween 1 and 4!"
        Setup
    ;;
    esac
}
Banner
Setup
