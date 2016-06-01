.class public Lcom/oneplus/tuner/AllConfigActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "AllConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/AllConfigActivity$ViewHolder;,
        Lcom/oneplus/tuner/AllConfigActivity$CategoryAdapter;,
        Lcom/oneplus/tuner/AllConfigActivity$DataBean;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/oneplus/tuner/AllConfigActivity$CategoryAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/AllConfigActivity$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListview:Landroid/widget/ListView;

.field private mNameResId:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mNameResId:[I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mData:Ljava/util/ArrayList;

    .line 147
    return-void

    .line 35
    :array_0
    .array-data 4
        0x7f0c0551
        0x7f0c0552
        0x7f0c0553
        0x7f0c0554
        0x7f0c0555
        0x7f0c0556
        0x7f0c0557
        0x7f0c0558
    .end array-data
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/AllConfigActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/AllConfigActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mNameResId:[I

    return-object v0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 58
    iget-object v3, p0, Lcom/oneplus/tuner/AllConfigActivity;->mNameResId:[I

    array-length v2, v3

    .line 59
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 60
    new-instance v0, Lcom/oneplus/tuner/AllConfigActivity$DataBean;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/AllConfigActivity$DataBean;-><init>(Lcom/oneplus/tuner/AllConfigActivity;)V

    .line 63
    .local v0, "bean":Lcom/oneplus/tuner/AllConfigActivity$DataBean;
    invoke-virtual {p0}, Lcom/oneplus/tuner/AllConfigActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/AllConfigActivity;->mNameResId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/oneplus/tuner/AllConfigActivity$DataBean;->name:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/oneplus/tuner/AllConfigActivity$DataBean;->access$002(Lcom/oneplus/tuner/AllConfigActivity$DataBean;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/oneplus/tuner/AllConfigActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "bean":Lcom/oneplus/tuner/AllConfigActivity$DataBean;
    :cond_0
    return-void
.end method

.method private initView(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ListView;

    .prologue
    .line 70
    new-instance v0, Lcom/oneplus/tuner/AllConfigActivity$CategoryAdapter;

    iget-object v1, p0, Lcom/oneplus/tuner/AllConfigActivity;->mData:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/oneplus/tuner/AllConfigActivity$CategoryAdapter;-><init>(Lcom/oneplus/tuner/AllConfigActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mAdapter:Lcom/oneplus/tuner/AllConfigActivity$CategoryAdapter;

    .line 71
    iget-object v0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mAdapter:Lcom/oneplus/tuner/AllConfigActivity$CategoryAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    new-instance v0, Lcom/oneplus/tuner/AllConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/AllConfigActivity$1;-><init>(Lcom/oneplus/tuner/AllConfigActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mIsSlideMenuEnable:Z

    .line 158
    iput-object p0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mActivity:Landroid/app/Activity;

    .line 159
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mIsTitlebarMenuEnable:Z

    .line 164
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/AllConfigActivity;->setContent(I)V

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/tuner/AllConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0590

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/AllConfigActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    const v0, 0x7f0b015c

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/AllConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mListview:Landroid/widget/ListView;

    .line 53
    invoke-direct {p0}, Lcom/oneplus/tuner/AllConfigActivity;->initData()V

    .line 54
    iget-object v0, p0, Lcom/oneplus/tuner/AllConfigActivity;->mListview:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/oneplus/tuner/AllConfigActivity;->initView(Landroid/widget/ListView;)V

    .line 55
    return-void
.end method
