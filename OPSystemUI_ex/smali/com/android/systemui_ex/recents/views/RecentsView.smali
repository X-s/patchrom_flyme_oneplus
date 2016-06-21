.class public Lcom/android/systemui_ex/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor$PackageCallbacks;
.implements Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;
    }
.end annotation


# static fields
.field private static final OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# instance fields
.field mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

.field mClearRecents:Landroid/view/View;

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

.field mInflater:Landroid/view/LayoutInflater;

.field mSearchBar:Landroid/view/View;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 352
    new-instance v0, Lcom/android/systemui_ex/recents/views/RecentsView$1;

    invoke-direct {v0}, Lcom/android/systemui_ex/recents/views/RecentsView$1;-><init>()V

    sput-object v0, Lcom/android/systemui_ex/recents/views/RecentsView;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    return-void
.end method


# virtual methods
.method public dismissAllTasksAnimated()V
    .locals 6

    .prologue
    .line 176
    const-string v4, "RecentsView"

    const-string v5, "dismissAllTasksAnimated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 178
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 179
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 181
    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 182
    .local v3, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->dismissAllTasks()V

    .line 178
    .end local v3    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public dismissFocusedTask()V
    .locals 5

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 441
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 442
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    move-object v3, v0

    .line 444
    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 445
    .local v3, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->dismissFocusedTask()V

    .line 449
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_0
    return-void

    .line 441
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public focusNextTask(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 427
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 428
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 429
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    move-object v3, v0

    .line 430
    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 431
    .local v3, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui_ex/recents/views/TaskStackView;->focusNextTask(ZZ)V

    .line 435
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_0
    return-void

    .line 427
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hasSearchBar()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchFocusedTask()Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v7

    .line 192
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 193
    invoke-virtual {p0, v8}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 194
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v6, v0, :cond_2

    move-object v1, v6

    .line 195
    check-cast v1, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 196
    .local v1, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    iget-object v3, v1, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    .line 198
    .local v3, "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v10

    .line 199
    .local v10, "taskCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v10, :cond_2

    .line 200
    invoke-virtual {v1, v9}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 201
    .local v2, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v4

    .line 202
    .local v4, "task":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 203
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;Z)V

    .line 204
    const/4 v5, 0x1

    .line 209
    .end local v1    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "j":I
    .end local v10    # "taskCount":I
    :cond_0
    return v5

    .line 199
    .restart local v1    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .restart local v4    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "j":I
    .restart local v10    # "taskCount":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 192
    .end local v1    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v9    # "j":I
    .end local v10    # "taskCount":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public launchPreviousTask()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v7

    .line 216
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 217
    invoke-virtual {p0, v8}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 218
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v6, v0, :cond_2

    move-object v1, v6

    .line 219
    check-cast v1, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 220
    .local v1, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    iget-object v3, v1, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    .line 221
    .local v3, "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v11

    .line 224
    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 226
    .local v10, "taskCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v10, :cond_2

    .line 227
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/recents/model/Task;

    .line 229
    .local v4, "task":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v2

    .local v2, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    move-object v0, p0

    .line 230
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;Z)V

    .line 231
    const/4 v5, 0x1

    .line 237
    .end local v1    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "j":I
    .end local v10    # "taskCount":I
    .end local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :cond_0
    return v5

    .line 226
    .restart local v1    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    .restart local v3    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "j":I
    .restart local v10    # "taskCount":I
    .restart local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 216
    .end local v1    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    .end local v3    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .end local v9    # "j":I
    .end local v10    # "taskCount":I
    .end local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public onAllTaskViewsDismissed()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;->onAllTaskViewsDismissed()V

    .line 620
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->updateSystemInsets(Landroid/graphics/Rect;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->requestLayout()V

    .line 407
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0f0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mClearRecents:Landroid/view/View;

    .line 363
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mClearRecents:Landroid/view/View;

    new-instance v1, Lcom/android/systemui_ex/recents/views/RecentsView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/recents/views/RecentsView$2;-><init>(Lcom/android/systemui_ex/recents/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mClearRecents:Landroid/view/View;

    sget-object v1, Lcom/android/systemui_ex/recents/views/RecentsView;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mClearRecents:Landroid/view/View;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 373
    return-void
.end method

.method public onDismissRecentsToHome()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;->onDismissRecentsToHome()V

    .line 639
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 382
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 383
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 384
    .local v3, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui_ex/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 386
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 392
    .end local v3    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 393
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 394
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 396
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0, p2, p3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 393
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 319
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 320
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 323
    .local v2, "height":I
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 324
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 325
    .local v9, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 331
    .end local v9    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 332
    .local v5, "taskStackBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v7

    .line 338
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 339
    invoke-virtual {p0, v8}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 340
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v6, v0, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    move-object v10, v6

    .line 341
    check-cast v10, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 343
    .local v10, "tsv":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v10, v5}, Lcom/android/systemui_ex/recents/views/TaskStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    .line 344
    invoke-virtual {v10, p1, p2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->measure(II)V

    .line 338
    .end local v10    # "tsv":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 348
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 349
    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 5
    .param p1, "monitor"    # Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 684
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 685
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 686
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 687
    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 688
    .local v3, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->onPackagesChanged(Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 684
    .end local v3    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onRecentsHidden()V
    .locals 5

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 626
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 627
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 628
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 629
    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 630
    .local v3, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->onRecentsHidden()V

    .line 626
    .end local v3    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onSetClearRecentsVisibility(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mClearRecents:Landroid/view/View;

    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0f0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mClearRecents:Landroid/view/View;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mClearRecents:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;Z)V
    .locals 24
    .param p1, "stackView"    # Lcom/android/systemui_ex/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;
    .param p3, "stack"    # Lcom/android/systemui_ex/recents/model/TaskStack;
    .param p4, "task"    # Lcom/android/systemui_ex/recents/model/Task;
    .param p5, "lockToTask"    # Z

    .prologue
    .line 475
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v7, :cond_0

    .line 476
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v7}, Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked()V

    .line 480
    :cond_0
    new-instance v23, Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    invoke-direct/range {v23 .. v23}, Lcom/android/systemui_ex/recents/views/TaskViewTransform;-><init>()V

    .line 482
    .local v23, "transform":Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    const/4 v5, 0x0

    .line 483
    .local v5, "offsetX":I
    const/4 v6, 0x0

    .line 484
    .local v6, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getScroller()Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v22

    .line 485
    .local v22, "stackScroll":F
    if-nez p2, :cond_4

    .line 489
    move-object/from16 v3, p1

    .line 490
    .local v3, "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui_ex/recents/model/Task;FLcom/android/systemui_ex/recents/views/TaskViewTransform;Lcom/android/systemui_ex/recents/views/TaskViewTransform;)Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    move-result-object v23

    .line 491
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 492
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui_ex/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 499
    :goto_0
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 501
    .local v14, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    const/16 v20, 0x0

    .line 502
    .local v20, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui_ex/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui_ex/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui_ex/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_3

    .line 505
    if-eqz p2, :cond_5

    .line 507
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui_ex/recents/views/TaskView;->isFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 508
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui_ex/recents/views/TaskView;->unsetFocusedTask()V

    .line 511
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui_ex/recents/views/TaskView;->getScaleX()F

    move-result v21

    .line 512
    .local v21, "scale":F
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v0, v7

    move/from16 v19, v0

    .line 513
    .local v19, "fromHeaderWidth":I
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v0, v7

    move/from16 v18, v0

    .line 514
    .local v18, "fromHeaderHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 519
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 520
    .local v17, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui_ex/recents/views/TaskView;->getScaleX()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui_ex/recents/views/TaskView;->getScaleY()F

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 521
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 522
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 528
    .end local v17    # "c":Landroid/graphics/Canvas;
    .end local v18    # "fromHeaderHeight":I
    .end local v19    # "fromHeaderWidth":I
    .end local v21    # "scale":F
    :goto_1
    const/4 v10, 0x0

    .line 529
    .local v10, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    if-eqz p5, :cond_2

    .line 530
    new-instance v10, Lcom/android/systemui_ex/recents/views/RecentsView$3;

    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/systemui_ex/recents/views/RecentsView$3;-><init>(Lcom/android/systemui_ex/recents/views/RecentsView;)V

    .line 546
    .restart local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_2
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v20

    .line 551
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_3
    move-object/from16 v15, v20

    .line 552
    .local v15, "launchOpts":Landroid/app/ActivityOptions;
    new-instance v11, Lcom/android/systemui_ex/recents/views/RecentsView$4;

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui_ex/recents/views/RecentsView$4;-><init>(Lcom/android/systemui_ex/recents/views/RecentsView;Lcom/android/systemui_ex/recents/model/Task;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Landroid/app/ActivityOptions;Z)V

    .line 577
    .local v11, "launchRunnable":Ljava/lang/Runnable;
    if-nez p2, :cond_6

    .line 578
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 590
    :goto_2
    return-void

    .line 494
    .end local v3    # "sourceView":Landroid/view/View;
    .end local v11    # "launchRunnable":Ljava/lang/Runnable;
    .end local v14    # "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    .end local v15    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v20    # "opts":Landroid/app/ActivityOptions;
    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    .line 495
    .restart local v3    # "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui_ex/recents/model/Task;FLcom/android/systemui_ex/recents/views/TaskViewTransform;Lcom/android/systemui_ex/recents/views/TaskViewTransform;)Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    move-result-object v23

    goto/16 :goto_0

    .line 526
    .restart local v14    # "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    .restart local v20    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4    # "b":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 580
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .restart local v11    # "launchRunnable":Ljava/lang/Runnable;
    .restart local v15    # "launchOpts":Landroid/app/ActivityOptions;
    :cond_6
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui_ex/recents/model/Task;->group:Lcom/android/systemui_ex/recents/model/TaskGrouping;

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/android/systemui_ex/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 583
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui_ex/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    goto :goto_2

    .line 586
    :cond_7
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui_ex/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    .line 587
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method public onTaskViewDismissed(Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 4
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 609
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 610
    .local v0, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui_ex/recents/model/Task;Z)V

    .line 613
    iget-object v2, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;->getComponentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->removeTask(Ljava/lang/String;I)V

    .line 615
    return-void
.end method

.method public onUserInteraction()V
    .locals 5

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 414
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 415
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 417
    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 418
    .local v3, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->onUserInteraction()V

    .line 414
    .end local v3    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    .line 111
    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 312
    :cond_0
    return-void
.end method

.method public setTaskStacks(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/TaskStack;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 123
    .local v3, "numStacks":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v7, "stackViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/views/TaskStackView;>;"
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 125
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "child":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v10, :cond_0

    .line 128
    check-cast v0, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v4, 0x0

    .line 134
    .local v4, "numTaskStacksToKeep":I
    iget-object v10, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    if-eqz v10, :cond_2

    .line 135
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 137
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    :goto_1
    if-lt v2, v4, :cond_3

    .line 138
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/android/systemui_ex/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 143
    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    .line 144
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 146
    .local v8, "tsv":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v8}, Lcom/android/systemui_ex/recents/views/TaskStackView;->reset()V

    .line 147
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v8, v10}, Lcom/android/systemui_ex/recents/views/TaskStackView;->setStack(Lcom/android/systemui_ex/recents/model/TaskStack;)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 151
    .end local v8    # "tsv":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_4
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v2, v3, :cond_5

    .line 153
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui_ex/recents/model/TaskStack;

    .line 154
    .local v5, "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    new-instance v6, Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10, v5}, Lcom/android/systemui_ex/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/TaskStack;)V

    .line 155
    .local v6, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v6, p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->setCallbacks(Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;)V

    .line 156
    invoke-virtual {p0, v6}, Lcom/android/systemui_ex/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 160
    .end local v5    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .end local v6    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui_ex/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v10, :cond_7

    .line 161
    add-int/lit8 v2, v1, -0x1

    :goto_4
    if-ltz v2, :cond_7

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 163
    .local v9, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v9, v10, :cond_6

    move-object v6, v9

    .line 164
    check-cast v6, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 165
    .restart local v6    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    iget-object v10, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    invoke-virtual {v6, v10}, Lcom/android/systemui_ex/recents/views/TaskStackView;->setDebugOverlay(Lcom/android/systemui_ex/recents/views/DebugOverlayView;)V

    .line 161
    .end local v6    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 171
    .end local v9    # "v":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->requestLayout()V

    .line 172
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 244
    iget-object v4, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 247
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 248
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 250
    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 251
    .local v3, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 247
    .end local v3    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;->onHasTasks()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/recents/views/RecentsView;->onSetClearRecentsVisibility(I)V

    .line 259
    :cond_2
    iget-object v4, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 260
    return-void
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 266
    iget-object v4, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 268
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 271
    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 272
    .local v3, "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 268
    .end local v3    # "stackView":Lcom/android/systemui_ex/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 278
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/recents/views/RecentsView;->onSetClearRecentsVisibility(I)V

    .line 281
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;->onExitToHomeAnimationTriggered()V

    .line 282
    return-void
.end method

.method public unfilterFilteredStacks()Z
    .locals 5

    .prologue
    .line 453
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 455
    const/4 v3, 0x0

    .line 456
    .local v3, "stacksUnfiltered":Z
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 457
    .local v1, "numStacks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 458
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/model/TaskStack;

    .line 459
    .local v2, "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->unfilterTasks()V

    .line 461
    const/4 v3, 0x1

    .line 457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "i":I
    .end local v1    # "numStacks":I
    .end local v2    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .end local v3    # "stacksUnfiltered":Z
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return v3
.end method
