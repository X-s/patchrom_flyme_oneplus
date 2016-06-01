.class public Lcom/oneplus/tuner/OfficialConfigActivity;
.super Landroid/app/Activity;
.source "OfficialConfigActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OfficialConfigActivity"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mBrandAdapter:Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;

.field private mBrandListView:Landroid/widget/ListView;

.field private mConfigArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBrand:I

.field private mLoadFromNet:Z

.field private mLoadReasonListTask:Ljava/lang/Runnable;

.field private mTypeId:Ljava/lang/Long;

.field private mTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeListAdapter:Lcom/oneplus/tuner/adapter/TypeListAdapter;

.field private mTypeListView:Landroid/widget/ListView;

.field private mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeList:Ljava/util/ArrayList;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mLoadFromNet:Z

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->handler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/oneplus/tuner/OfficialConfigActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/OfficialConfigActivity$3;-><init>(Lcom/oneplus/tuner/OfficialConfigActivity;)V

    iput-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mLoadReasonListTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/OfficialConfigActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OfficialConfigActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/OfficialConfigActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OfficialConfigActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/tuner/OfficialConfigActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OfficialConfigActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/OfficialConfigActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OfficialConfigActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oneplus/tuner/OfficialConfigActivity;->loadConfigNum()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/OfficialConfigActivity;)Lcom/oneplus/tuner/adapter/TypeListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OfficialConfigActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeListAdapter:Lcom/oneplus/tuner/adapter/TypeListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/tuner/OfficialConfigActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OfficialConfigActivity;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mLoadFromNet:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/tuner/OfficialConfigActivity;)Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OfficialConfigActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/tuner/OfficialConfigActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OfficialConfigActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/tuner/OfficialConfigActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OfficialConfigActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private initBrandListView()V
    .locals 6

    .prologue
    .line 122
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mConfigArray:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->filterBrandConfig(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mConfigArray:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "bl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 125
    .local v2, "s":Lcom/oneplus/tuner/providers/OfficialEarphone;
    invoke-virtual {v2}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {v2}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v2    # "s":Lcom/oneplus/tuner/providers/OfficialEarphone;
    :cond_1
    new-instance v3, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;

    const v4, 0x7f03002a

    iget-object v5, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mConfigArray:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandAdapter:Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;

    .line 131
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandAdapter:Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    return-void
.end method

.method private initTypeListView()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/oneplus/tuner/adapter/TypeListAdapter;

    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/tuner/adapter/TypeListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeListAdapter:Lcom/oneplus/tuner/adapter/TypeListAdapter;

    .line 138
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeListAdapter:Lcom/oneplus/tuner/adapter/TypeListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    return-void
.end method

.method private loadConfigNum()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mLoadReasonListTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/oppo/tribune/util/ThreadUtils;->startThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 154
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f03003b

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OfficialConfigActivity;->setContentView(I)V

    .line 55
    new-instance v1, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    .line 56
    const v1, 0x7f050003

    invoke-static {p0, v1}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->loadOfficialConfig(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mConfigArray:Ljava/util/ArrayList;

    .line 59
    const v1, 0x7f0b0155

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OfficialConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandListView:Landroid/widget/ListView;

    .line 60
    const v1, 0x7f0b0156

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OfficialConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeListView:Landroid/widget/ListView;

    .line 61
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeId:Ljava/lang/Long;

    .line 62
    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    iget-object v2, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->queryBrandId(Ljava/lang/Long;)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I

    .line 64
    iget v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/tuner/OfficialConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c05aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "type":Ljava/lang/String;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeId:Ljava/lang/Long;

    .line 68
    invoke-static {v0}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneTypeId(J)V

    .line 70
    iput v4, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I

    .line 76
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/tuner/OfficialConfigActivity;->loadConfigNum()V

    .line 77
    invoke-direct {p0}, Lcom/oneplus/tuner/OfficialConfigActivity;->initBrandListView()V

    .line 78
    invoke-direct {p0}, Lcom/oneplus/tuner/OfficialConfigActivity;->initTypeListView()V

    .line 80
    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 81
    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 82
    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 83
    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandListView:Landroid/widget/ListView;

    new-instance v2, Lcom/oneplus/tuner/OfficialConfigActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/OfficialConfigActivity$1;-><init>(Lcom/oneplus/tuner/OfficialConfigActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeListView:Landroid/widget/ListView;

    new-instance v2, Lcom/oneplus/tuner/OfficialConfigActivity$2;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/OfficialConfigActivity$2;-><init>(Lcom/oneplus/tuner/OfficialConfigActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/OfficialConfigActivity;->finish()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
