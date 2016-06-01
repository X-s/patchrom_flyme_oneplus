.class public Lcom/oneplus/tuner/fragment/AllConfigFragment;
.super Landroid/app/Fragment;
.source "AllConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;,
        Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;,
        Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CATEGORY_ID:Ljava/lang/String; = "category_id"


# instance fields
.field private mAdapter:Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/widget/RelativeLayout;

.field private mIconResId:[I

.field private mNameResId:[I

.field private view:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mData:Ljava/util/ArrayList;

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mIconResId:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mNameResId:[I

    .line 188
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x7f0200ce
        0x7f0200d1
        0x7f0200c8
        0x7f0200bc
        0x7f0200b9
        0x7f0200bf
        0x7f0200c2
        0x7f0200cb
    .end array-data

    .line 43
    :array_1
    .array-data 4
        0x7f0c0551
        0x7f0c0552
        0x7f0c0553
        0x7f0c0554
        0x7f0c0556
        0x7f0c0558
        0x7f0c0557
        0x7f0c0555
    .end array-data
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/fragment/AllConfigFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mNameResId:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/fragment/AllConfigFragment;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->getCategoryId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCategoryId(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "res":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 135
    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    goto :goto_0

    .line 115
    :pswitch_2
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_0

    .line 118
    :pswitch_3
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_4
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_5
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    goto :goto_0

    .line 127
    :pswitch_6
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    goto :goto_0

    .line 130
    :pswitch_7
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 67
    iget-object v3, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mNameResId:[I

    array-length v2, v3

    .line 68
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 69
    new-instance v0, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;-><init>(Lcom/oneplus/tuner/fragment/AllConfigFragment;)V

    .line 70
    .local v0, "bean":Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mIconResId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    # setter for: Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v3}, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->access$002(Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mNameResId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->name:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->access$102(Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "bean":Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;

    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mData:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;-><init>(Lcom/oneplus/tuner/fragment/AllConfigFragment;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mAdapter:Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;

    .line 78
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->view:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mAdapter:Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->view:Landroid/widget/GridView;

    new-instance v1, Lcom/oneplus/tuner/fragment/AllConfigFragment$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/fragment/AllConfigFragment$1;-><init>(Lcom/oneplus/tuner/fragment/AllConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mHeader:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/oneplus/tuner/fragment/AllConfigFragment$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/fragment/AllConfigFragment$2;-><init>(Lcom/oneplus/tuner/fragment/AllConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    const v1, 0x7f030040

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->view:Landroid/widget/GridView;

    .line 60
    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment;->mHeader:Landroid/widget/RelativeLayout;

    .line 61
    invoke-direct {p0}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->initData()V

    .line 62
    invoke-direct {p0}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->initView()V

    .line 63
    return-object v0
.end method
