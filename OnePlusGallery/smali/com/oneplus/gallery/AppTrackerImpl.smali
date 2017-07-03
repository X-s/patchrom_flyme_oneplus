.class final Lcom/oneplus/gallery/AppTrackerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "AppTrackerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/AppTracker;


# static fields
.field private static final ACTION_LAUNCH:Ljava/lang/String; = "Gallery.Launch"

.field private static final TAG:Ljava/lang/String; = "GalleryAppTracker"


# instance fields
.field private final m_Record:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_Tracker:Ljava/lang/Object;

.field private m_TrackerOnEventMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GalleryApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/oneplus/gallery/GalleryApplication;

    .prologue
    .line 36
    const-string v0, "APP tracker"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    .line 37
    return-void
.end method

.method private createLaunchRecord(Ljava/util/Map;Lcom/oneplus/gallery/ActivityLaunchType;)Z
    .locals 2
    .param p2, "launchType"    # Lcom/oneplus/gallery/ActivityLaunchType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/gallery/ActivityLaunchType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "record":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->UNKNOWN:Lcom/oneplus/gallery/ActivityLaunchType;

    if-ne p2, v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_0
    const-string v0, "Type"

    invoke-virtual {p2}, Lcom/oneplus/gallery/ActivityLaunchType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createLeaveRecord(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .param p2, "leavePage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "record":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_0
    const-string v0, "Page"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createMediaSetCreationDeletionRecord(Ljava/util/Map;Lcom/oneplus/gallery/media/MediaSet$Type;Ljava/lang/String;)Z
    .locals 2
    .param p2, "type"    # Lcom/oneplus/gallery/media/MediaSet$Type;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/gallery/media/MediaSet$Type;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "record":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 47
    .end local p3    # "name":Ljava/lang/String;
    :goto_0
    return v0

    .line 45
    .restart local p3    # "name":Ljava/lang/String;
    :cond_0
    const-string v0, "Type"

    invoke-virtual {p2}, Lcom/oneplus/gallery/media/MediaSet$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "Name"

    if-eqz p3, :cond_1

    .end local p3    # "name":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    .restart local p3    # "name":Ljava/lang/String;
    :cond_1
    const-string p3, ""

    goto :goto_1
.end method


# virtual methods
.method public varargs createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/oneplus/gallery/AppTrackerImpl;->verifyAccess()V

    .line 77
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Tracker:Ljava/lang/Object;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v3

    .line 140
    :goto_0
    return v1

    .line 83
    :cond_1
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 140
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    move v1, v3

    goto :goto_0

    .line 83
    :sswitch_0
    :try_start_1
    const-string v5, "Gallery.CreateMediaSet"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v5, "Gallery.DeleteMediaSet"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v5, "Gallery.Launch"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    goto :goto_1

    :sswitch_3
    const-string v5, "Gallery.Leave"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "Gallery.ShareMedia"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "Gallery.DeleteMedia"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "Gallery.UndoDeleteMedia"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v5, "Gallery.MultipleSelection"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v5, "Gallery.SetFavorite"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v5, "Gallery.EditPhoto"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_a
    const-string v5, "Gallery.SetWallPapper"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_b
    const-string v5, "Gallery.EnterTab"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_1

    .line 87
    :pswitch_0
    array-length v1, p3

    if-lt v1, v2, :cond_3

    iget-object v5, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaSet$Type;

    const/4 v2, 0x1

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v5, v1, v2}, Lcom/oneplus/gallery/AppTrackerImpl;->createMediaSetCreationDeletionRecord(Ljava/util/Map;Lcom/oneplus/gallery/media/MediaSet$Type;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_6

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    move v1, v3

    goto/16 :goto_0

    .line 92
    :pswitch_1
    :try_start_2
    array-length v1, p3

    if-lt v1, v4, :cond_4

    iget-object v2, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Lcom/oneplus/gallery/ActivityLaunchType;

    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery/AppTrackerImpl;->createLaunchRecord(Ljava/util/Map;Lcom/oneplus/gallery/ActivityLaunchType;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_6

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    move v1, v3

    goto/16 :goto_0

    .line 97
    :pswitch_2
    :try_start_3
    array-length v1, p3

    if-lt v1, v4, :cond_5

    iget-object v2, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery/AppTrackerImpl;->createLeaveRecord(Ljava/util/Map;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_6

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    move v1, v3

    goto/16 :goto_0

    .line 101
    :pswitch_3
    :try_start_4
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const-string v2, "Share"

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_6
    :goto_2
    const-string v1, "GalleryAppTracker"

    const-string v2, "createRecord() - Action : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_TrackerOnEventMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Tracker:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    move v1, v4

    goto/16 :goto_0

    .line 104
    :pswitch_4
    :try_start_5
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const-string v2, "Delete"

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_6
    const-string v1, "GalleryAppTracker"

    const-string v2, "createRecord() - Unknown error"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    move v1, v3

    goto/16 :goto_0

    .line 107
    .end local v0    # "ex":Ljava/lang/Throwable;
    :pswitch_5
    :try_start_7
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const-string v2, "UndoDelete"

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 140
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    throw v1

    .line 110
    :pswitch_6
    :try_start_8
    iget-object v2, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const-string v5, "IsMultipleSelection"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 113
    :pswitch_7
    iget-object v2, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const-string v5, "IsFavorite"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const-string v5, "FavoriteMeidaCounts"

    array-length v1, p3

    if-le v1, v4, :cond_7

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string v1, "1"

    goto :goto_3

    .line 118
    :pswitch_8
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const-string v2, "EditPhoto"

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 121
    :pswitch_9
    iget-object v1, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const-string v2, "SetWallPaper"

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 124
    :pswitch_a
    iget-object v2, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Record:Ljava/util/Map;

    const-string v5, "EnterTabs"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca752aa -> :sswitch_0
        -0x62ec75f1 -> :sswitch_2
        -0x23043d94 -> :sswitch_9
        -0x1e028cfb -> :sswitch_1
        -0x16eee45f -> :sswitch_4
        -0x169afa80 -> :sswitch_7
        -0xa7864be -> :sswitch_8
        -0x38effe3 -> :sswitch_5
        0x2f8c6ae -> :sswitch_a
        0x512acdb -> :sswitch_3
        0x6ecde699 -> :sswitch_6
        0x7cb4f0f9 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 150
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 155
    :try_start_0
    const-string v4, "net.oneplus.odm.insight.tracker.AppTracker"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 156
    .local v2, "trackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 157
    .local v3, "trackerCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v4, "onEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_TrackerOnEventMethod:Ljava/lang/reflect/Method;

    .line 158
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Tracker:Ljava/lang/Object;

    .line 159
    const-string v4, "GalleryAppTracker"

    const-string v5, "onInitialize() - Tracker created"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v2    # "trackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "trackerCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    .line 170
    .local v0, "app":Lcom/oneplus/gallery/GalleryApplication;
    sget-object v4, Lcom/oneplus/gallery/GalleryApplication;->EVENT_ACTIVITY_LAUNCHED:Lcom/oneplus/base/EventKey;

    new-instance v5, Lcom/oneplus/gallery/AppTrackerImpl$1;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery/AppTrackerImpl$1;-><init>(Lcom/oneplus/gallery/AppTrackerImpl;)V

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/gallery/GalleryApplication;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 178
    return-void

    .line 161
    .end local v0    # "app":Lcom/oneplus/gallery/GalleryApplication;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v4, "GalleryAppTracker"

    const-string v5, "onInitialize() - Fail to setup tracker"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    iput-object v8, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_Tracker:Ljava/lang/Object;

    .line 165
    iput-object v8, p0, Lcom/oneplus/gallery/AppTrackerImpl;->m_TrackerOnEventMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method
