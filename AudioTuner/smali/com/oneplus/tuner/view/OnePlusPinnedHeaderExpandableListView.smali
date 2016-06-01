.class public Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "OnePlusPinnedHeaderExpandableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff


# instance fields
.field private mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

.field private mDownX:F

.field private mDownY:F

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I

.field private mOldState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mOldState:I

    .line 28
    invoke-direct {p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->registerListener()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mOldState:I

    .line 23
    invoke-direct {p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->registerListener()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mOldState:I

    .line 18
    invoke-direct {p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->registerListener()V

    .line 19
    return-void
.end method

.method private headerViewClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 114
    .local v2, "packedPosition":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 116
    .local v0, "groupPosition":I
    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    invoke-interface {v1, v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->getGroupClickStatus(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->collapseGroup(I)Z

    .line 118
    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->setGroupClickStatus(II)V

    .line 125
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->setSelectedGroup(I)V

    .line 126
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->expandGroup(I)Z

    .line 122
    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    invoke-interface {v1, v0, v4}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->setGroupClickStatus(II)V

    goto :goto_0
.end method

.method private registerListener()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0, p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 105
    invoke-virtual {p0, p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public configureHeaderView(II)V
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 225
    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    check-cast v6, Landroid/widget/ExpandableListAdapter;

    invoke-interface {v6}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    invoke-interface {v6, p1, p2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->getHeaderState(II)I

    move-result v4

    .line 232
    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    iput-boolean v9, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    iget-object v7, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    const/16 v8, 0xff

    invoke-interface {v6, v7, p1, p2, v8}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->configureHeader(Landroid/view/View;III)V

    .line 241
    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz v6, :cond_2

    .line 242
    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    iget v7, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewWidth:I

    iget v8, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 245
    :cond_2
    iput-boolean v10, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-virtual {p0, v9}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "firstView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 255
    .local v1, "bottom":I
    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 261
    .local v3, "headerHeight":I
    if-ge v1, v3, :cond_4

    .line 262
    sub-int v5, v1, v3

    .line 263
    .local v5, "y":I
    add-int v6, v3, v5

    mul-int/lit16 v6, v6, 0xff

    div-int v0, v6, v3

    .line 269
    .local v0, "alpha":I
    :goto_1
    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    iget-object v7, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v6, v7, p1, p2, v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->configureHeader(Landroid/view/View;III)V

    .line 271
    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v6, v5, :cond_3

    .line 272
    iget-object v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    iget v7, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewWidth:I

    iget v8, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewHeight:I

    add-int/2addr v8, v5

    invoke-virtual {v6, v9, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 275
    :cond_3
    iput-boolean v10, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 265
    .end local v0    # "alpha":I
    .end local v5    # "y":I
    :cond_4
    const/4 v5, 0x0

    .line 266
    .restart local v5    # "y":I
    const/16 v0, 0xff

    .restart local v0    # "alpha":I
    goto :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 287
    iget-boolean v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 291
    :cond_0
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v2, 0x1

    .line 182
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    invoke-interface {v0, p3}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->getGroupClickStatus(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    invoke-interface {v0, p3, v2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->setGroupClickStatus(II)V

    .line 184
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 194
    :cond_0
    :goto_0
    return v2

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    invoke-interface {v0, p3}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->getGroupClickStatus(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->setGroupClickStatus(II)V

    .line 190
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 211
    invoke-super/range {p0 .. p5}, Landroid/widget/ExpandableListView;->onLayout(ZIIII)V

    .line 212
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 213
    .local v2, "flatPostion":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 214
    .local v1, "groupPos":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 215
    .local v0, "childPos":I
    iget-object v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    invoke-interface {v5, v1, v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;->getHeaderState(II)I

    move-result v4

    .line 216
    .local v4, "state":I
    iget-object v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mOldState:I

    if-eq v4, v5, :cond_0

    .line 217
    iput v4, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mOldState:I

    .line 218
    iget-object v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    iget v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewWidth:I

    iget v7, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewHeight:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 221
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->configureHeaderView(II)V

    .line 222
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 200
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->measureChild(Landroid/view/View;II)V

    .line 202
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewWidth:I

    .line 203
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewHeight:I

    .line 205
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 295
    invoke-virtual {p0, p2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 296
    .local v2, "flatPos":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 297
    .local v1, "groupPosition":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 299
    .local v0, "childPosition":I
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->configureHeaderView(II)V

    .line 300
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 304
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 137
    iget-boolean v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewVisible:Z

    if-eqz v5, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 166
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_1
    :goto_0
    return v4

    .line 140
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mDownX:F

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mDownY:F

    .line 142
    iget v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mDownX:F

    iget v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewWidth:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mDownY:F

    iget v6, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewHeight:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 148
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 149
    .local v3, "y":F
    iget v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mDownX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 150
    .local v0, "offsetX":F
    iget v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mDownY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 152
    .local v1, "offsetY":F
    iget v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewWidth:I

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewHeight:I

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewWidth:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderViewHeight:I

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_0

    .line 154
    iget-object v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->headerViewClick()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 173
    check-cast p1, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    .end local p1    # "adapter":Landroid/widget/ExpandableListAdapter;
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;

    .line 174
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    .line 92
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 94
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->setFadingEdgeLength(I)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->requestLayout()V

    .line 101
    return-void
.end method
