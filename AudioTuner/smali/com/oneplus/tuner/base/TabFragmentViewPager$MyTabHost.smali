.class Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;
.super Landroid/widget/LinearLayout;
.source "TabFragmentViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/base/TabFragmentViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTabHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field mOnTabChangeListener:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;

.field private mTab:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->setOrientation(I)V

    .line 282
    invoke-direct {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->init()V

    .line 283
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mTab:Landroid/widget/LinearLayout;

    .line 293
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 294
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 297
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mTab:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 298
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09035a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 299
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mTab:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    return-void
.end method


# virtual methods
.method public addTabs(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 332
    .local v5, "title":Ljava/lang/String;
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 333
    .local v4, "textView":Landroid/widget/TextView;
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 334
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v6, 0x3

    new-array v6, v6, [[I

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10100a1

    aput v10, v8, v9

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10100a7

    aput v10, v8, v9

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    new-array v8, v8, [I

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800da

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800da

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800db

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    aput v9, v7, v8

    invoke-direct {v0, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 343
    .local v0, "color":Landroid/content/res/ColorStateList;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 345
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 347
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 348
    iget-object v6, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mTab:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v6, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mTab:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 351
    .local v2, "index":I
    new-instance v6, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$1;

    invoke-direct {v6, p0, v2}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$1;-><init>(Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 380
    .end local v0    # "color":Landroid/content/res/ColorStateList;
    .end local v2    # "index":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x2

    .line 305
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mTab:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 311
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 313
    iput p1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mCurrentIndex:I

    .line 314
    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mTab:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 315
    .restart local v0    # "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 317
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    :cond_0
    return-void
.end method

.method public setOnTabChangedListener(Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "onTabChangeListener"    # Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mOnTabChangeListener:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;

    .line 387
    return-void
.end method
