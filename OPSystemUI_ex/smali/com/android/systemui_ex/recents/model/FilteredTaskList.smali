.class Lcom/android/systemui_ex/recents/model/FilteredTaskList;
.super Ljava/lang/Object;
.source "TaskStack.java"


# instance fields
.field mFilter:Lcom/android/systemui_ex/recents/model/TaskFilter;

.field mFilteredTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTaskIndices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task$TaskKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    return-void
.end method

.method private updateFilteredTaskIndices()V
    .locals 6

    .prologue
    .line 138
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 139
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 140
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 141
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/recents/model/Task;

    .line 142
    .local v1, "t":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "t":Lcom/android/systemui_ex/recents/model/Task;
    :cond_0
    return-void
.end method

.method private updateFilteredTasks()V
    .locals 5

    .prologue
    .line 121
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui_ex/recents/model/TaskFilter;

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 124
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 125
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/recents/model/Task;

    .line 126
    .local v1, "t":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui_ex/recents/model/TaskFilter;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui_ex/recents/model/TaskFilter;->acceptTask(Lcom/android/systemui_ex/recents/model/Task;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui_ex/recents/model/Task;
    .end local v2    # "taskCount":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->updateFilteredTaskIndices()V

    .line 134
    return-void
.end method


# virtual methods
.method contains(Lcom/android/systemui_ex/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasFilter()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui_ex/recents/model/TaskFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method indexOf(Lcom/android/systemui_ex/recents/model/Task;)I
    .locals 2
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method remove(Lcom/android/systemui_ex/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    .local v0, "removed":Z
    invoke-direct {p0}, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 98
    .end local v0    # "removed":Z
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeFilter()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui_ex/recents/model/TaskFilter;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 76
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui_ex/recents/model/TaskFilter;

    .line 70
    return-void
.end method

.method set(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui_ex/recents/model/Task;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    invoke-direct {p0}, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 89
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
