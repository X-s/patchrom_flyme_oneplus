.class public Lcom/oneplus/tuner/OnePlusHeadSetActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusHeadSetActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# static fields
.field private static final MSG_INIT_DATA_COMPLETED:I = 0x1


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

.field private mBrands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private mIsFromShareActivity:Z

.field private mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

.field private mLoadFromNet:Z

.field private mLoadReasonListTask:Ljava/lang/Runnable;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;>;"
        }
    .end annotation
.end field

.field private modeAndId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mLoadFromNet:Z

    .line 129
    new-instance v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity$2;-><init>(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)V

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->handler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;-><init>(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)V

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mLoadReasonListTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->getDefaultExpanedGroupPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->readBrandAndModelFromXML()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mConfigArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/tuner/OnePlusHeadSetActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->transformatData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->modeAndId:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDefaultExpanedGroupPosition()I
    .locals 10

    .prologue
    const/4 v5, -0x1

    .line 85
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v3, v5

    .line 99
    :goto_0
    return v3

    .line 89
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 90
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "brand":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 92
    .local v2, "earphoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 93
    .local v1, "earphone":Lcom/oneplus/tuner/providers/OfficialEarphone;
    invoke-virtual {v1}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getTypeId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    goto :goto_0

    .line 89
    .end local v1    # "earphone":Lcom/oneplus/tuner/providers/OfficialEarphone;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "brand":Ljava/lang/String;
    .end local v2    # "earphoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    move v3, v5

    .line 99
    goto :goto_0
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->loadList()V

    .line 110
    return-void
.end method

.method private loadList()V
    .locals 18

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 151
    .local v6, "t1":J
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->readBrandAndModelFromXML()V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 153
    .local v8, "t2":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mConfigArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->transformatData(Ljava/util/ArrayList;)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 155
    .local v10, "t3":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_1

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 180
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 181
    .local v2, "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    const-string v14, "shuqi0703"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bean = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->modeAndId:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getModel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/oneplus/tuner/providers/OfficialEarphone;->setTypeId(J)V

    .line 183
    const-string v14, "shuqi0703"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "after bean = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    .end local v2    # "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 187
    .local v12, "t4":J
    const-string v14, "shuqi"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "read xml = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v8, v6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", transform = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", net query = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v12, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", total = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v12, v6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private readBrandAndModelFromXML()V
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f050003

    invoke-static {p0, v0}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->loadOfficialConfig(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mConfigArray:Ljava/util/ArrayList;

    .line 104
    const v0, 0x7f050004

    invoke-static {p0, v0}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->loadHeadsetModeAndId(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->modeAndId:Ljava/util/HashMap;

    .line 105
    return-void
.end method

.method private transformatData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 114
    .local v0, "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getBrand()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "brand":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 119
    .local v2, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    if-nez v2, :cond_1

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .restart local v2    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    .end local v1    # "brand":Ljava/lang/String;
    .end local v2    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mIsSlideMenuEnable:Z

    .line 241
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mActivity:Landroid/app/Activity;

    .line 242
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mIsTitlebarMenuEnable:Z

    .line 247
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mIsTitlebarOnlyOneMenuItem:Z

    .line 252
    const v0, 0x7f0200dc

    iput v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMenuOneIconId:I

    .line 253
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMenuTwoIconId:I

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMenuOneIntent:Landroid/content/Intent;

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/OnePlusSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMenuTwoIntent:Landroid/content/Intent;

    .line 256
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 9
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v8, 0x0

    .line 265
    sget-boolean v3, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-nez v3, :cond_0

    .line 266
    const v3, 0x7f0c06ff

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 283
    :goto_0
    return v8

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->getChild(II)Lcom/oneplus/tuner/providers/OfficialEarphone;

    move-result-object v0

    .line 270
    .local v0, "child":Lcom/oneplus/tuner/providers/OfficialEarphone;
    const-string v3, "shuqi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brand = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getBrand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getModel()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getTypeId()J

    move-result-wide v4

    .line 273
    .local v4, "type_id":J
    iget-boolean v3, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mIsFromShareActivity:Z

    if-nez v3, :cond_1

    .line 274
    invoke-static {v2}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 275
    invoke-static {v4, v5}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneTypeId(J)V

    .line 278
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "earphone_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v3, "earphone_type_id"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v8, v1}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->setResult(ILandroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c056a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->setContent(I)V

    .line 51
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->initData()V

    .line 53
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    .line 54
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    invoke-virtual {v0, v9}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004b

    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    invoke-virtual {v1, v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->setHeaderView(Landroid/view/View;)V

    .line 56
    new-instance v1, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;-><init>(Landroid/content/Context;Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;Ljava/util/ArrayList;Ljava/util/HashMap;J)V

    iput-object v1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    .line 59
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    invoke-virtual {v0, p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    new-instance v1, Lcom/oneplus/tuner/OnePlusHeadSetActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->getDefaultExpanedGroupPosition()I

    move-result v3

    .line 77
    .local v3, "positon":I
    if-ltz v3, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    const-wide/16 v4, 0x0

    move-object v2, v9

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    .line 81
    .end local v3    # "positon":I
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_from_shareactivity_flag"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mIsFromShareActivity:Z

    .line 82
    return-void
.end method
