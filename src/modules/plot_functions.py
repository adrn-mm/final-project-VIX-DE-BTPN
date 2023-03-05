"""
The purpose of this script is to collect all plot functions for this project
"""

import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np


def plot_pie_chart(df, label_column, value_column, title):
    """
    A function to create a pie chart from df
    """
    # Pie chart
    labels = df[label_column].tolist()
    sizes = df[value_column].tolist()

    # colors
    colors = ["tab:blue", "tab:red", "tab:green", "tab:orange", "tab:purple"]

    # plot
    fig1, ax1 = plt.subplots()
    ax1.pie(sizes, colors=colors, labels=None, startangle=90, labeldistance=1.05)

    # Equal aspect ratio ensures that pie is drawn as a circle
    ax1.axis("equal")

    # legend config
    percent_sizes = [(n / sum(sizes) * 100) for n in sizes]
    legend_labels = [f"{l} {s:0.1f}%" for l, s in zip(labels, percent_sizes)]
    plt.legend(bbox_to_anchor=(1.21, 0.5), loc="center", labels=legend_labels)

    # set title
    plt.suptitle(title)

    plt.tight_layout()
    plt.show()


def plot_stacked_bar_chart(df, title):
    """
    A function to create a stacked bar chart from df
    """
    sns.set_style("ticks")

    ax = df.plot(
        kind="bar",
        stacked=True,
        color=["tab:red", "tab:blue", "tab:green", "tab:orange", "tab:purple"],
    )

    for c in ax.containers:
        ax.bar_label(c, label_type="center", color="white")

    ax.spines[["right", "top"]].set_visible(False)

    plt.ylabel("Total Customers")
    plt.xticks(rotation=0)
    plt.legend(bbox_to_anchor=(1.21, 0.5), loc="center")
    plt.title(title)
    plt.tight_layout()
    plt.show()


def plot_bar_chart(df, title):
    """
    A function to create a bar chart from df
    """
    sns.set_style("ticks")

    ax = df.plot(
        kind="bar",
        stacked=False,
        color=["tab:blue", "tab:red", "tab:green", "tab:orange", "tab:purple"],
        legend=None,
    )

    for c in ax.containers:
        ax.bar_label(c, label_type="center", color="white")

    ax.spines[["right", "top"]].set_visible(False)

    plt.ylabel("Total Customers")
    plt.xticks(rotation=0)
    plt.title(title)
    plt.tight_layout()
    plt.show()


def plot_horizontal_bar_chart(df, title):
    """
    A function to create a horizontal bar chart from df
    """
    sns.set_style("ticks")

    ax = df.plot(
        kind="barh",
        stacked=False,
        color="tab:blue",
        legend=None,
    )

    for c in ax.containers:
        ax.bar_label(c, label_type="center", color="white")

    ax.spines[["right", "top"]].set_visible(False)

    plt.xlabel("Total Customers")
    plt.title(title)
    plt.tight_layout()
    plt.show()
