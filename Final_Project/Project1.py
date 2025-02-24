import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load IPL dataset
file_path = "matches.csv"  # Change this if needed
df = pd.read_csv(file_path)

# Function to ask user for chart type
def get_chart_type():
    print("\nSelect Chart Type:")
    print("1. Bar Chart")
    print("2. Pie Chart")
    print("3. Line Chart")
    
    choice = input("Enter your choice (1-3): ")
    return choice

# Function to plot total matches per season
def matches_per_season():
    season_counts = df['season'].value_counts().sort_index()
    
    chart_type = get_chart_type()
    
    plt.figure(figsize=(10, 5))
    
    if chart_type == '1':  # Bar Chart
        sns.barplot(x=season_counts.index, y=season_counts.values, palette="viridis")
        plt.xlabel("Season")
        plt.ylabel("Total Matches")
        plt.title("Total Matches Per Season")
    
    elif chart_type == '2':  # Pie Chart
        plt.pie(season_counts, labels=season_counts.index, autopct="%1.1f%%", startangle=90, colors=sns.color_palette("pastel"))
        plt.title("Matches Per Season Distribution")
    
    elif chart_type == '3':  # Line Chart
        plt.plot(season_counts.index, season_counts.values, marker="o", linestyle="-", color="b")
        plt.xlabel("Season")
        plt.ylabel("Total Matches")
        plt.title("Matches Trend Per Season")
    
    plt.legend(["Matches"])
    plt.xticks(rotation=45)
    plt.show()

# Function to plot top 10 players with most 'Player of the Match' awards
def top_players():
    top_players = df['player_of_match'].value_counts().head(10)
    
    plt.figure(figsize=(10, 5))
    sns.barplot(x=top_players.values, y=top_players.index, palette="coolwarm")
    plt.xlabel("Number of Awards")
    plt.ylabel("Players")
    plt.title("Top 10 Players with Most 'Player of the Match' Awards")
    plt.show()

# Function to plot toss decision analysis
def toss_decision():
    toss_counts = df['toss_decision'].value_counts()
    
    plt.figure(figsize=(6, 6))
    plt.pie(toss_counts, labels=toss_counts.index, autopct="%1.1f%%", colors=["lightblue", "orange"], startangle=90)
    plt.title("Toss Decision Distribution")
    plt.legend(toss_counts.index)
    plt.show()

# Function to plot total wins by each team
def team_wins():
    team_wins = df['winner'].value_counts()
    
    chart_type = get_chart_type()
    
    plt.figure(figsize=(10, 5))
    
    if chart_type == '1':  # Bar Chart
        sns.barplot(x=team_wins.index, y=team_wins.values, palette="magma")
        plt.xlabel("Teams")
        plt.ylabel("Total Wins")
        plt.title("Total Wins By Each Team")
    
    elif chart_type == '2':  # Pie Chart
        plt.pie(team_wins, labels=team_wins.index, autopct="%1.1f%%", startangle=90, colors=sns.color_palette("coolwarm"))
        plt.title("Team Wins Distribution")
    
    elif chart_type == '3':  # Line Chart
        plt.plot(team_wins.index, team_wins.values, marker="o", linestyle="-", color="r")
        plt.xlabel("Teams")
        plt.ylabel("Total Wins")
        plt.title("Team Wins Trend")
    
    plt.legend(["Wins"])
    plt.xticks(rotation=90)
    plt.show()

# Function to display menu
def display_menu():
    print("\nIPL Data Analysis Menu:")
    print("1. Total Matches Per Season")
    print("2. Top 10 Player of the Match Winners")
    print("3. Toss Decision Analysis")
    print("4. Team Wins Distribution")
    print("5. Exit")

# Function to handle user choice
def handle_choice(choice):
    options = {
        1: matches_per_season,
        2: top_players,
        3: toss_decision,
        4: team_wins
    }
    
    if choice in options:
        options[choice]()
    elif choice == 5:
        print("Exiting program. Goodbye!")
        return False
    else:
        print("Invalid choice! Please enter a number between 1-5.")
    
    return True

# Main loop
running = True
while running:
    display_menu()
    try:
        user_choice = int(input("Enter your choice (1-5): "))
        running = handle_choice(user_choice)
    except ValueError:
        print("Please enter a valid number.")
