.class public Lcom/oneplus/settings/product/ProductInfoActivity;
.super Landroid/app/Activity;
.source "ProductInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/product/ProductInfoActivity$1;
    }
.end annotation


# static fields
.field private static count:I


# instance fields
.field private mCountTextView:Landroid/widget/TextView;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/settings/product/ProductInfoActivity;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/product/ProductInfoActivity;->updatePagerViews(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    .line 20
    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 23
    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/oneplus/settings/product/ProductInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/product/ProductInfoActivity$1;-><init>(Lcom/oneplus/settings/product/ProductInfoActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 17
    return-void
.end method

.method public static autoGenericCode(II)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I
    .param p1, "num"    # I

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method private initViews()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 38
    const v6, 0x7f040102

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/product/ProductInfoActivity;->setContentView(I)V

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    .line 41
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 42
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo16859(Landroid/content/Context;)Z

    move-result v3

    .line 43
    .local v3, "is16859":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x12

    if-ge v1, v6, :cond_1

    .line 44
    const v6, 0x7f040101

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "customView":Landroid/view/View;
    const v6, 0x7f110060

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 46
    .local v4, "iv":Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 47
    .local v5, "resId":I
    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "product_17801_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8, v10}, Lcom/oneplus/settings/product/ProductInfoActivity;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawable"

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 52
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "product_16859_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8, v10}, Lcom/oneplus/settings/product/ProductInfoActivity;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawable"

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 56
    .end local v0    # "customView":Landroid/view/View;
    .end local v4    # "iv":Landroid/widget/ImageView;
    .end local v5    # "resId":I
    :cond_1
    const v6, 0x7f11022f

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/product/ProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 57
    const v6, 0x7f110231

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/product/ProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    .line 58
    iget-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    new-instance v6, Lcom/oneplus/settings/product/NovicePagerAdapter;

    iget-object v7, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-direct {v6, v7}, Lcom/oneplus/settings/product/NovicePagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    .line 60
    iget-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 61
    iget-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 62
    iget-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 63
    iget-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    invoke-virtual {v6}, Lcom/oneplus/settings/product/NovicePagerAdapter;->getCount()I

    move-result v6

    sput v6, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    .line 64
    iget-object v6, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "1/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method private updatePagerViews(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->initViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 100
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 123
    return-void
.end method
