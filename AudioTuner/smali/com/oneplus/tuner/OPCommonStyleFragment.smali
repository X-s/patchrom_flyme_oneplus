.class public Lcom/oneplus/tuner/OPCommonStyleFragment;
.super Landroid/app/Fragment;
.source "OPCommonStyleFragment.java"

# interfaces
.implements Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;
.implements Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;,
        Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;
    }
.end annotation


# static fields
.field public static final MSG_TO_UPDATE_UI:I = 0x2711


# instance fields
.field commonStyleData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private commonStyleGridView:Landroid/widget/GridView;

.field public mCommonStyleAdapter:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

.field public mHandler:Landroid/os/Handler;

.field private mIsConfigEmpty:Z

.field private mType:Ljava/lang/String;

.field private mTypeId:Ljava/lang/Long;

.field manager:Lcom/waves/maxxaudio/MaxxAudioManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->commonStyleData:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/oneplus/tuner/OPCommonStyleFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/OPCommonStyleFragment$1;-><init>(Lcom/oneplus/tuner/OPCommonStyleFragment;)V

    iput-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mHandler:Landroid/os/Handler;

    .line 333
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->commonStyleData:Ljava/util/List;

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->commonStyleData:Ljava/util/List;

    .line 92
    :goto_0
    sget-boolean v2, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/tuner/OPCommonStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/manager/OppoTunerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getDefaultCommonStyleSoundEffects_001()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 94
    .local v0, "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iget-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->commonStyleData:Ljava/util/List;

    new-instance v3, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v3, v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->commonStyleData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/OPCommonStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/manager/OppoTunerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getDefaultCommonStyleSoundEffects_049()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 98
    .restart local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iget-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->commonStyleData:Ljava/util/List;

    new-instance v3, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v3, v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    invoke-virtual {p0}, Lcom/oneplus/tuner/OPCommonStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->commonStyleData:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;-><init>(Lcom/oneplus/tuner/OPCommonStyleFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mCommonStyleAdapter:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    .line 83
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->commonStyleGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mCommonStyleAdapter:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->commonStyleGridView:Landroid/widget/GridView;

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/tuner/OPCommonStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.audiotuner.common"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    .line 62
    invoke-direct {p0}, Lcom/oneplus/tuner/OPCommonStyleFragment;->initData()V

    .line 63
    invoke-direct {p0}, Lcom/oneplus/tuner/OPCommonStyleFragment;->initView()V

    .line 65
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mType:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mTypeId:Ljava/lang/Long;

    .line 67
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mIsConfigEmpty:Z

    .line 69
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mType:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/OPCommonStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c05aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mType:Ljava/lang/String;

    .line 71
    const-wide/16 v2, 0x68

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mTypeId:Ljava/lang/Long;

    .line 72
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mType:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneTypeId(J)V

    .line 75
    :cond_1
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    .line 76
    return-object v0
.end method

.method public onEffectDataChanged()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mCommonStyleAdapter:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mCommonStyleAdapter:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->notifyDataSetChanged()V

    .line 331
    :cond_0
    return-void
.end method

.method public onHeadsetPlugged()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    .line 342
    return-void
.end method

.method public onHeadsetUnplugged()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    .line 348
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mCommonStyleAdapter:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->notifyDataSetChanged()V

    .line 128
    return-void
.end method
