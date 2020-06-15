#Poker Simulator
#Christopher Miklasevich August 2019

#Node for containing the numbers and the type of symbol
#Ace - Kings ; Clover, Heart, Spade, Diamond
class Card:

    def __init__(self,num,col):
        self.next = None
        self.next.next = None
        self.prev = None
        self.prev.prev = None
        self.num = num
        self.col = col

class Deck:


    def __init__(self)
    self.sentinel = Card(None)
    self.sentinel.next = self.sentinel
    self.sentinel.prev = self.sentinel


# Adding the first two cards would be for the players' starting cards
# The next three would be the 'Flop', the next one, the 'Turn' and the 'Turn' 
    def add(self,item):
        temp = Card(item)
        cur = self.sentinel.next
        temp.next = cur
        temp.prev = cur.prev
        cur.prev.next = temp
        cur.prev = temp

#Sort the cards in play. This is to keep things organized ( Maybe use this to find
#similar cards ( same color or same number)
    def sort(self):


#The end of the turn to reset the cards in play ( ONLY USE FOR THE CARDS IN PLAY)
    def next_turn(self):
        self.sentinel.next = self.sentinel
        self.sentinel.prev = self.sentinel
        

    
