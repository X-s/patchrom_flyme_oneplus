.class public Lcom/oneplus/gallery/HeaderItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "HeaderItemDecoration.java"


# static fields
.field private static final PRINT_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "HeaderItemDecoration"


# instance fields
.field private m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

.field private final m_GridItemSpacingVertical:I

.field private final m_HeaderHeight:I

.field private final m_RecyclerViewChildPosX:I

.field private m_Spacing:I

.field private m_StatusBarHeight:I

.field private m_StickyHeaderLocalTime:J

.field private m_StickyHeaderText:Landroid/widget/TextView;

.field private m_StickyHeaderView:Landroid/view/View;

.field private final m_TodayString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GridViewFragment;II)V
    .locals 8
    .param p1, "fragment"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p2, "columns"    # I
    .param p3, "spacing"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 32
    iput v6, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Spacing:I

    .line 41
    iput p3, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Spacing:I

    .line 42
    iput-object p1, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    .line 43
    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_RecyclerViewChildPosX:I

    .line 44
    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_GridItemSpacingVertical:I

    .line 45
    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_TodayString:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_HeaderHeight:I

    .line 47
    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StatusBarHeight:I

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/ScreenSize;

    .line 52
    .local v1, "screensize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderView:Landroid/view/View;

    .line 55
    iget-object v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v3

    add-int/2addr v3, p3

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_HeaderHeight:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 56
    iget-object v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v3

    const-string v4, "gallery_activity_background"

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    iget-object v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderView:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 59
    iget-object v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderView:Landroid/view/View;

    const v3, 0x7f06004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderText:Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v3

    const-string v4, "gridview_header_text"

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    return-void
.end method

.method private drawStickyHeader(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    iget-object v7, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v8, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 70
    .local v3, "paddingTopNow":F
    new-array v6, v9, [I

    fill-array-data v6, :array_0

    .line 71
    .local v6, "stickyLocation":[I
    new-array v2, v9, [I

    fill-array-data v2, :array_1

    .line 73
    .local v2, "nextLocation":[I
    iget-object v7, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    iget-wide v8, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderLocalTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/GridViewFragment;->findNextHeaderItem(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    .line 74
    .local v0, "nextHeaderInfo":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    if-eqz v0, :cond_0

    .line 76
    iget-object v7, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    iget v8, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/GridViewFragment;->findHeaderView(I)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "nextHeaderView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 82
    .end local v1    # "nextHeaderView":Landroid/view/View;
    :cond_0
    iget v7, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StatusBarHeight:I

    int-to-float v7, v7

    add-float v5, v3, v7

    .line 83
    .local v5, "stickyHeaderYPosTop":F
    iget v7, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_HeaderHeight:I

    int-to-float v7, v7

    add-float v4, v5, v7

    .line 84
    .local v4, "stickyHeaderYPosBottom":F
    aget v7, v2, v10

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    aget v7, v2, v10

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1

    aget v7, v2, v10

    int-to-float v7, v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_1

    .line 86
    aget v7, v2, v10

    iget v8, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_HeaderHeight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StatusBarHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v11, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    :goto_0
    iget-object v7, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v7, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 96
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1, v11, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 70
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 71
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 103
    .local v0, "itemPosition":I
    iget-object v1, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery/GridViewFragment;->isHeaderPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 106
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    iget v1, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Spacing:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 109
    iget v1, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Spacing:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public getStickyHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 126
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery/HeaderItemDecoration;->updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/HeaderItemDecoration;->drawStickyHeader(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V
    .locals 22
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 147
    const-string v18, "HeaderItemDecoration"

    const-string v19, "updateStickyHeaderText() - RecyclerView is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v18 .. v19}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 152
    .local v16, "todayDateMillies":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v18 .. v19}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 153
    .local v13, "paddingTopNow":F
    move v14, v13

    .line 154
    .local v14, "posY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_RecyclerViewChildPosX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    .line 155
    .local v4, "childView":Landroid/view/View;
    if-nez v4, :cond_2

    .line 157
    const-string v18, "HeaderItemDecoration"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateStickyHeaderText() - View is null, pos x:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_RecyclerViewChildPosX:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",pos y:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_GridItemSpacingVertical:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v14, v14, v18

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_RecyclerViewChildPosX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    .line 162
    :cond_2
    if-nez v4, :cond_3

    .line 164
    const-string v18, "HeaderItemDecoration"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateStickyHeaderText() - still can not get the child view, pos x:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_RecyclerViewChildPosX:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",posY :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v10

    .line 168
    .local v10, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v10, :cond_4

    .line 170
    const-string v18, "HeaderItemDecoration"

    const-string v19, "updateStickyHeaderText() - View is null."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    :cond_4
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v11

    .line 175
    .local v11, "itemViewType":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_6

    .line 177
    check-cast v10, Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;

    .end local v10    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, v10, Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 178
    .local v15, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_TodayString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 180
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderLocalTime:J

    .line 195
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    :cond_5
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v9

    .line 187
    .local v9, "formatter":Ljava/text/DateFormat;
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 188
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderLocalTime:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    .end local v5    # "date":Ljava/util/Date;
    .end local v9    # "formatter":Ljava/text/DateFormat;
    :catch_0
    move-exception v7

    .line 192
    .local v7, "e":Ljava/text/ParseException;
    const-string v18, "HeaderItemDecoration"

    const-string v19, "updateStickyHeaderText() - e:"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 200
    .end local v7    # "e":Ljava/text/ParseException;
    .end local v15    # "text":Ljava/lang/CharSequence;
    .restart local v10    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_6
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v11, v0, :cond_0

    .line 202
    check-cast v10, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .end local v10    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v12, v10, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 203
    .local v12, "media":Lcom/oneplus/gallery/media/Media;
    const/4 v6, 0x0

    .line 204
    .local v6, "dateString":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_Fragment:Lcom/oneplus/gallery/GridViewFragment;

    move-object/from16 v18, v0

    invoke-interface {v12}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderLocalTime:J

    .line 207
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderLocalTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v16

    if-nez v18, :cond_7

    .line 209
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_TodayString:Ljava/lang/String;

    .line 216
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 213
    :cond_7
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v8

    .line 214
    .local v8, "format":Ljava/text/DateFormat;
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderLocalTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 221
    .end local v8    # "format":Ljava/text/DateFormat;
    :cond_8
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderLocalTime:J

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_StickyHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/HeaderItemDecoration;->m_TodayString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
