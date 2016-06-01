.class public Lcom/oppo/tribune/square/TopLineListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopLineListAdapter.java"

# interfaces
.implements Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;
    }
.end annotation


# static fields
.field public static final MSG_TO_UPDATE_UI:I = 0x2711

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmapRealLoad:Z

.field public mCurrentTid:J

.field private mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;

.field public mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemElementsClkLsn:Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAndUseClkHandler:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

.field private mPraiseClkHandler:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/square/TopLineListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "visibile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Lcom/oppo/tribune/square/TopLineListAdapter$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/square/TopLineListAdapter$1;-><init>(Lcom/oppo/tribune/square/TopLineListAdapter;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mList:Ljava/util/List;

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mCurrentTid:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mBitmapRealLoad:Z

    .line 59
    new-instance v0, Lcom/oppo/tribune/square/TopLineListAdapter$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/square/TopLineListAdapter$2;-><init>(Lcom/oppo/tribune/square/TopLineListAdapter;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;

    .line 74
    invoke-static {p2}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    return-void
.end method

.method private bindImageViews(Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;IZ)V
    .locals 6
    .param p1, "itemview"    # Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;
    .param p2, "simpleThreadInfo"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p3, "position"    # I
    .param p4, "realLoad"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TopLineListAdapter;->getCount()I

    move-result v2

    if-lt p3, v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getCategoryId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setCategory(I)V

    .line 192
    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 193
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getDateline()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setUsedState(Z)V

    .line 203
    :goto_2
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mItemElementsClkLsn:Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mItemElementsClkLsn:Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    iget-object v1, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, p2}, Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;->getWholeItemClkLsn(Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setItemClkLsn(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mItemElementsClkLsn:Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    invoke-interface {v0, p2, p3}, Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;->getMoreInfoClkLsn(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setMoreInfoClkLsn(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 193
    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 196
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v0, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubjectCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setUsedState(Z)V

    goto :goto_2

    .line 199
    :cond_4
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    int-to-long v2, v2

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    :goto_3
    invoke-virtual {p1, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setUsedState(Z)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method private bindTextViews(Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)V
    .locals 4
    .param p1, "itemview"    # Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;
    .param p2, "simpleThreadInfo"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p3, "position"    # I

    .prologue
    .line 155
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TopLineListAdapter;->getCount()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubjectCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 162
    invoke-virtual {p1}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setSummaryGone()V

    .line 163
    invoke-virtual {p1}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setUseCountGone()V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getDownloadNum()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setCount(I)V

    goto :goto_0
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    invoke-virtual {p0}, Lcom/oppo/tribune/square/TopLineListAdapter;->notifyDataSetChanged()V

    .line 109
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    invoke-virtual {p0}, Lcom/oppo/tribune/square/TopLineListAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method

.method protected findUserImageUrl(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "thread"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://bbs2.wanyol.com/uc_server/avatar.php?uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getAuthorid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&size=small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "object":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TopLineListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "object":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    check-cast v0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .line 122
    .restart local v0    # "object":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/TopLineListAdapter;->getItem(I)Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "itemview":Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;
    if-nez p2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03004c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0    # "itemview":Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;
    check-cast v0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;

    .line 140
    .restart local v0    # "itemview":Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/TopLineListAdapter;->getItem(I)Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    move-result-object v1

    .line 141
    .local v1, "simpleThreadInfo":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/tribune/square/TopLineListAdapter;->bindTextViews(Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)V

    .line 142
    iget-boolean v2, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mBitmapRealLoad:Z

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/oppo/tribune/square/TopLineListAdapter;->bindImageViews(Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;IZ)V

    .line 144
    if-eqz v1, :cond_0

    .line 145
    const v2, 0x7f0b0015

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setTag(ILjava/lang/Object;)V

    .line 148
    :cond_0
    const v2, 0x7f0b0014

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setTag(ILjava/lang/Object;)V

    .line 150
    return-object v0

    .end local v1    # "simpleThreadInfo":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    :cond_1
    move-object v0, p2

    .line 137
    check-cast v0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;

    goto :goto_0
.end method

.method public loadHolderData(Landroid/view/View;Z)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "realLoad"    # Z

    .prologue
    .line 231
    const/4 v4, 0x0

    .line 232
    .local v4, "itemView":Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;
    instance-of v7, p1, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 233
    check-cast v4, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;

    .line 235
    :cond_0
    if-eqz v4, :cond_1

    .line 236
    const v7, 0x7f0b0014

    invoke-virtual {v4, v7}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 237
    .local v6, "positionObj":Ljava/lang/Object;
    const v7, 0x7f0b0015

    invoke-virtual {v4, v7}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 239
    .local v1, "entityIdObj":Ljava/lang/Object;
    if-eqz v6, :cond_1

    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    .line 240
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "positionObj":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 241
    .local v5, "position":I
    invoke-virtual {p0, v5}, Lcom/oppo/tribune/square/TopLineListAdapter;->getItem(I)Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    move-result-object v0

    .line 242
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    if-eqz v1, :cond_2

    instance-of v7, v1, Ljava/lang/Long;

    if-eqz v7, :cond_2

    .line 243
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "entityIdObj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 244
    .local v2, "entityTagId":J
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-nez v7, :cond_2

    .line 245
    invoke-direct {p0, v4, v0, v5, p2}, Lcom/oppo/tribune/square/TopLineListAdapter;->bindImageViews(Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;IZ)V

    .line 252
    .end local v0    # "entity":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .end local v2    # "entityTagId":J
    .end local v5    # "position":I
    :cond_1
    :goto_0
    return-void

    .line 249
    .restart local v0    # "entity":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .restart local v5    # "position":I
    :cond_2
    invoke-direct {p0, v4, v0, v5, p2}, Lcom/oppo/tribune/square/TopLineListAdapter;->bindImageViews(Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;IZ)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TopLineListAdapter;->setBitmapRealLoad(Z)V

    .line 221
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 222
    return-void
.end method

.method public setBitmapRealLoad(Z)V
    .locals 0
    .param p1, "realLoad"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mBitmapRealLoad:Z

    .line 227
    return-void
.end method

.method public setItemElementsClkLsn(Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mItemElementsClkLsn:Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    .line 70
    return-void
.end method

.method public setLoadAndUseClkHandler(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;)V
    .locals 2
    .param p1, "loadAndUseClkHandler"    # Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mLoadAndUseClkHandler:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    .line 179
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mLoadAndUseClkHandler:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    iget-object v1, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->setDownloadAndUseListener(Lcom/oneplus/tuner/listener/DownloadAndUseListener;)V

    .line 182
    return-void
.end method

.method public setPraiseClkHandler(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)V
    .locals 0
    .param p1, "praiseClkHandler"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mPraiseClkHandler:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    .line 174
    return-void
.end method

.method public updateViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {p0}, Lcom/oppo/tribune/square/TopLineListAdapter;->notifyDataSetChanged()V

    .line 92
    :cond_0
    return-void
.end method

.method public updateViewsByAddList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-virtual {p0}, Lcom/oppo/tribune/square/TopLineListAdapter;->notifyDataSetChanged()V

    .line 101
    :cond_0
    return-void
.end method
