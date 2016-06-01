.class public Lcom/oneplus/tuner/fragment/CommonStyleFragment;
.super Landroid/app/Fragment;
.source "CommonStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;,
        Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;
    }
.end annotation


# static fields
.field public static final MSG_TO_UPDATE_UI:I = 0x2711


# instance fields
.field public mAdapter:Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field private mIsConfigEmpty:Z

.field public mList:Landroid/widget/ListView;

.field private mType:Ljava/lang/String;

.field private mTypeId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mData:Ljava/util/List;

    .line 111
    new-instance v0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$1;-><init>(Lcom/oneplus/tuner/fragment/CommonStyleFragment;)V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mHandler:Landroid/os/Handler;

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/fragment/CommonStyleFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/CommonStyleFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->initData()V

    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 77
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mData:Ljava/util/List;

    if-nez v2, :cond_0

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mData:Ljava/util/List;

    .line 82
    :goto_0
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 83
    .local v0, "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mData:Ljava/util/List;

    new-instance v3, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v3, v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 85
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const v1, 0x7f030044

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mList:Landroid/widget/ListView;

    .line 49
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mType:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mTypeId:Ljava/lang/Long;

    .line 51
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mIsConfigEmpty:Z

    .line 53
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mType:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c05aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mType:Ljava/lang/String;

    .line 55
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mTypeId:Ljava/lang/Long;

    .line 56
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mType:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneTypeId(J)V

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->initData()V

    .line 62
    new-instance v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mData:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;-><init>(Lcom/oneplus/tuner/fragment/CommonStyleFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mAdapter:Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

    .line 63
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mAdapter:Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 105
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->onResume()V

    .line 109
    return-void
.end method
