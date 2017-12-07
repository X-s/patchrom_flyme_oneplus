.class Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;,
        Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;
    }
.end annotation


# static fields
.field private static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field private static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field private static final ATTR_DISABLED_MESSAGE:Ljava/lang/String; = "dmessage"

.field private static final ATTR_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "dmessageid"

.field private static final ATTR_DISABLED_MESSAGE_RES_NAME:Ljava/lang/String; = "dmessagename"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_RES_ID:Ljava/lang/String; = "icon-res"

.field private static final ATTR_ICON_RES_NAME:Ljava/lang/String; = "icon-resname"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INTENT_LEGACY:Ljava/lang/String; = "intent"

.field private static final ATTR_INTENT_NO_EXTRA:Ljava/lang/String; = "intent-base"

.field private static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TEXT_RES_ID:Ljava/lang/String; = "textid"

.field private static final ATTR_TEXT_RES_NAME:Ljava/lang/String; = "textname"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleid"

.field private static final ATTR_TITLE_RES_NAME:Ljava/lang/String; = "titlename"

.field private static final KEY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field private static final KEY_BITMAP_BYTES:Ljava/lang/String; = "bitmapBytes"

.field private static final KEY_DYNAMIC:Ljava/lang/String; = "dynamic"

.field private static final KEY_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final KEY_PINNED:Ljava/lang/String; = "pinned"

.field private static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_INTENT_EXTRAS_LEGACY:Ljava/lang/String; = "intent-extras"

.field static final TAG_ROOT:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"

.field private static final TAG_VERIFY:Ljava/lang/String; = "ShortcutService.verify"


# instance fields
.field private mApiCallCount:I

.field private mLastKnownForegroundElapsedTime:J

.field private mLastResetTime:J

.field private final mPackageUid:I

.field final mShortcutRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutTypeAndRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$1(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 908
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    const/4 v0, 0x1

    return v0

    .line 909
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 914
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$2(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 3
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1072
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1073
    return v0

    .line 1080
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1081
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1085
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1086
    if-eqz v0, :cond_3

    .line 1087
    return v0

    .line 1092
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$4(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 1551
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$5(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 1555
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$6(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 1558
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 134
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .prologue
    .line 129
    if-eqz p4, :cond_0

    .line 128
    .end local p4    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 906
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    .line 1069
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    .line 131
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 127
    return-void

    .line 129
    .restart local p4    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :cond_0
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p4

    goto :goto_0
.end method

.method private addShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 212
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 215
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcut(ILandroid/content/pm/ShortcutInfo;)V

    .line 216
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method private areAllActivitiesStillEnabled()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 588
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 589
    return v7

    .line 591
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 595
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 597
    .local v1, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 598
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 599
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 601
    .local v0, "activity":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 597
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 604
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 607
    return v6

    .line 610
    .end local v0    # "activity":Landroid/content/ComponentName;
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    return v7
.end method

.method private deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;
    .locals 4
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disable"    # Z
    .param p3, "overrideImmutable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 350
    .local v0, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    if-nez p3, :cond_0

    .line 354
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 356
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 359
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 360
    if-eqz p2, :cond_1

    .line 361
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 365
    return-object v0

    .line 351
    :cond_2
    return-object v2

    .line 367
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 368
    return-object v2
.end method

.method private deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 201
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->removeIcon(ILandroid/content/pm/ShortcutInfo;)V

    .line 203
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 206
    :cond_0
    return-object v0
.end method

.method private disableDynamicWithId(Ljava/lang/String;)Z
    .locals 3
    .param p1, "shortcutId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 322
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Manifest shortcut ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string/jumbo v2, " may not be manipulated via APIs"

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    return-void
.end method

.method private ensureNotImmutable(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 183
    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 576
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 577
    .local v0, "sep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 578
    return-object p0

    .line 580
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .locals 2
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ComponentName;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 946
    .local v0, "oldValue":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 947
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 950
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .locals 10
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1353
    const-string/jumbo v7, "name"

    .line 1352
    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1355
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/ShortcutPackage;

    .line 1356
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v7

    .line 1355
    invoke-direct {v3, p1, v7, v2}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 1359
    .local v3, "ret":Lcom/android/server/pm/ShortcutPackage;
    const-string/jumbo v7, "call-count"

    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 1358
    iput v7, v3, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 1361
    const-string/jumbo v7, "last-reset"

    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 1360
    iput-wide v8, v3, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 1363
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1365
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 1366
    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_4

    .line 1367
    :cond_1
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1370
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1371
    .local v0, "depth":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1372
    .local v5, "tag":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    if-ne v0, v7, :cond_3

    .line 1373
    const-string/jumbo v7, "package-info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1375
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 1373
    :cond_2
    const-string/jumbo v7, "shortcut"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1379
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v7

    .line 1378
    invoke-static {p2, v2, v7}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 1382
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v7, v3, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1386
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    invoke-static {v0, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    goto :goto_0

    .line 1388
    .end local v0    # "depth":I
    .end local v5    # "tag":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method private static parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1501
    const-string/jumbo v5, "intent-base"

    .line 1500
    invoke-static {p0, v5}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1503
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1505
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v10, :cond_4

    .line 1506
    if-ne v4, v12, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_4

    .line 1507
    :cond_1
    if-ne v4, v11, :cond_0

    .line 1510
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1511
    .local v0, "depth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1512
    .local v3, "tag":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/pm/ShortcutService;->DEBUG_LOAD:Z

    if-eqz v5, :cond_2

    .line 1513
    const-string/jumbo v5, "ShortcutService"

    const-string/jumbo v6, "  depth=%d type=%d name=%s"

    new-array v7, v12, [Ljava/lang/Object;

    .line 1514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v3, v7, v11

    .line 1513
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_2
    const-string/jumbo v5, "extras"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1519
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1518
    invoke-static {v1, v5}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    goto :goto_0

    .line 1522
    :cond_3
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1524
    .end local v0    # "depth":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method private static parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 38
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1406
    const/16 v31, 0x0

    .line 1407
    .local v31, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .local v32, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/16 v21, 0x0

    .line 1415
    .local v21, "extras":Landroid/os/PersistableBundle;
    const/16 v18, 0x0

    .line 1417
    .local v18, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v3, "id"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1419
    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v3, "activity"

    .line 1418
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 1420
    .local v7, "activityComponent":Landroid/content/ComponentName;
    const-string/jumbo v3, "title"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1421
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v3, "titleid"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 1422
    .local v10, "titleResId":I
    const-string/jumbo v3, "titlename"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1423
    .local v11, "titleResName":Ljava/lang/String;
    const-string/jumbo v3, "text"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1424
    .local v12, "text":Ljava/lang/String;
    const-string/jumbo v3, "textid"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    .line 1425
    .local v13, "textResId":I
    const-string/jumbo v3, "textname"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1426
    .local v14, "textResName":Ljava/lang/String;
    const-string/jumbo v3, "dmessage"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1428
    .local v15, "disabledMessage":Ljava/lang/String;
    const-string/jumbo v3, "dmessageid"

    .line 1427
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v16

    .line 1430
    .local v16, "disabledMessageResId":I
    const-string/jumbo v3, "dmessagename"

    .line 1429
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1431
    .local v17, "disabledMessageResName":Ljava/lang/String;
    const-string/jumbo v3, "intent"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v30

    .line 1432
    .local v30, "intentLegacy":Landroid/content/Intent;
    const-string/jumbo v3, "rank"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v20, v0

    .line 1433
    .local v20, "rank":I
    const-string/jumbo v3, "timestamp"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v22

    .line 1434
    .local v22, "lastChangedTimestamp":J
    const-string/jumbo v3, "flags"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v24, v0

    .line 1435
    .local v24, "flags":I
    const-string/jumbo v3, "icon-res"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v25, v0

    .line 1436
    .local v25, "iconResId":I
    const-string/jumbo v3, "icon-resname"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1437
    .local v26, "iconResName":Ljava/lang/String;
    const-string/jumbo v3, "bitmap-path"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1439
    .local v27, "bitmapPath":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v33

    .line 1441
    .end local v18    # "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "extras":Landroid/os/PersistableBundle;
    .end local v31    # "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    .local v33, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .local v35, "type":I
    const/4 v3, 0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_7

    .line 1442
    const/4 v3, 0x3

    move/from16 v0, v35

    if-ne v0, v3, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v33

    if-le v3, v0, :cond_7

    .line 1443
    :cond_1
    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_0

    .line 1446
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v28

    .line 1447
    .local v28, "depth":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    .line 1448
    .local v34, "tag":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/pm/ShortcutService;->DEBUG_LOAD:Z

    if-eqz v3, :cond_2

    .line 1449
    const-string/jumbo v3, "ShortcutService"

    const-string/jumbo v4, "  depth=%d type=%d name=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1450
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v19, 0x0

    aput-object v8, v6, v19

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v19, 0x1

    aput-object v8, v6, v19

    const/4 v8, 0x2

    aput-object v34, v6, v8

    .line 1449
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_2
    const-string/jumbo v3, "intent-extras"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1454
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v31

    .local v31, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 1452
    .end local v31    # "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    :cond_3
    const-string/jumbo v3, "intent"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1457
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1452
    :cond_4
    const-string/jumbo v3, "extras"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1460
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v21

    .local v21, "extras":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 1452
    .end local v21    # "extras":Landroid/os/PersistableBundle;
    :cond_5
    const-string/jumbo v3, "categories"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "string-array"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1466
    const-string/jumbo v3, "categories"

    .line 1467
    const-string/jumbo v4, "name"

    .line 1466
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1469
    const-string/jumbo v3, "string-array"

    const/4 v4, 0x0

    .line 1468
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1470
    .local v2, "ar":[Ljava/lang/String;
    new-instance v18, Landroid/util/ArraySet;

    array-length v3, v2

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 1471
    .local v18, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_1
    array-length v3, v2

    move/from16 v0, v29

    if-ge v0, v3, :cond_0

    .line 1472
    aget-object v3, v2, v29

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1471
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 1477
    .end local v2    # "ar":[Ljava/lang/String;
    .end local v18    # "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "i":I
    :cond_6
    move/from16 v0, v28

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1480
    .end local v28    # "depth":I
    .end local v34    # "tag":Ljava/lang/String;
    :cond_7
    if-eqz v30, :cond_8

    .line 1482
    invoke-static/range {v30 .. v31}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1483
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 1484
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    :cond_8
    new-instance v3, Landroid/content/pm/ShortcutInfo;

    .line 1492
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/Intent;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/content/Intent;

    .line 1488
    const/4 v8, 0x0

    move/from16 v4, p2

    move-object/from16 v6, p1

    .line 1487
    invoke-direct/range {v3 .. v27}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private publishManifestShortcuts(Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    sget-boolean v11, Lcom/android/server/pm/ShortcutService;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 773
    const-string/jumbo v11, "ShortcutService"

    .line 774
    const-string/jumbo v12, "Package %s: publishing manifest shortcuts"

    .line 773
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 773
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    const/4 v1, 0x0

    .line 779
    .local v1, "changed":Z
    const/4 v9, 0x0

    .line 780
    .local v9, "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .end local v9    # "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 781
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 783
    .local v8, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 784
    if-nez v9, :cond_1

    .line 785
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 787
    :cond_1
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 792
    .end local v8    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    if-eqz p1, :cond_9

    .line 793
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    .line 795
    .local v5, "newListSize":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_9

    .line 796
    const/4 v1, 0x1

    .line 798
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 799
    .local v6, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x0

    .line 801
    .local v4, "newDisabled":Z
    :goto_2
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 802
    .local v3, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 804
    .local v7, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v10, 0x0

    .line 806
    .local v10, "wasPinned":Z
    if-eqz v7, :cond_7

    .line 807
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v11

    if-nez v11, :cond_6

    .line 808
    const-string/jumbo v11, "ShortcutService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Shortcut with ID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 809
    const-string/jumbo v13, " exists but is not from AndroidManifest.xml, not updating."

    .line 808
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 799
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "newDisabled":Z
    .end local v7    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v10    # "wasPinned":Z
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "newDisabled":Z
    goto :goto_2

    .line 813
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v7    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v10    # "wasPinned":Z
    :cond_6
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 814
    const/4 v10, 0x1

    .line 815
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 818
    :cond_7
    if-eqz v4, :cond_8

    if-eqz v10, :cond_4

    .line 827
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/pm/ShortcutPackage;->addShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 829
    if-nez v4, :cond_4

    if-eqz v9, :cond_4

    .line 831
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 837
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "newDisabled":Z
    .end local v5    # "newListSize":I
    .end local v6    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v7    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v10    # "wasPinned":Z
    :cond_9
    if-eqz v9, :cond_c

    .line 838
    sget-boolean v11, Lcom/android/server/pm/ShortcutService;->DEBUG:Z

    if-eqz v11, :cond_a

    .line 839
    const-string/jumbo v11, "ShortcutService"

    .line 840
    const-string/jumbo v12, "Package %s: disabling %d stale shortcuts"

    .line 839
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 841
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 839
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_a
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_4
    if-ltz v2, :cond_b

    .line 844
    const/4 v1, 0x1

    .line 846
    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 848
    .restart local v3    # "id":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 849
    const/4 v13, 0x1

    .line 848
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v12, v13}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 843
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 851
    .end local v3    # "id":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 853
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 854
    return v1
.end method

.method private pushOutExcessShortcuts()Z
    .locals 9

    .prologue
    .line 862
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v6, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 863
    .local v6, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v4

    .line 865
    .local v4, "maxShortcuts":I
    const/4 v1, 0x0

    .line 868
    .local v1, "changed":Z
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v0

    .line 869
    .local v0, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "outer":I
    :goto_0
    if-ltz v5, :cond_3

    .line 870
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 871
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_1

    .line 869
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 875
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 878
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "inner":I
    :goto_1
    if-lt v2, v4, :cond_0

    .line 879
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 881
    .local v7, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 884
    const-string/jumbo v8, "Found manifest shortcuts in excess list."

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 878
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 887
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;)Z

    goto :goto_2

    .line 891
    .end local v2    # "inner":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_3
    return v1
.end method

.method private removeOrphans()V
    .locals 4

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .end local v1    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 261
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 263
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 265
    :cond_0
    if-nez v1, :cond_1

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 272
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 271
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 257
    :cond_3
    return-void
.end method

.method private static saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V
    .locals 9
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1284
    if-eqz p2, :cond_1

    .line 1285
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    :cond_0
    if-nez v5, :cond_1

    .line 1286
    return-void

    .line 1289
    :cond_1
    const-string/jumbo v5, "shortcut"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1290
    const-string/jumbo v5, "id"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1292
    const-string/jumbo v5, "activity"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1294
    const-string/jumbo v5, "title"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1295
    const-string/jumbo v5, "titleid"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1296
    const-string/jumbo v5, "titlename"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1297
    const-string/jumbo v5, "text"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1298
    const-string/jumbo v5, "textid"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1299
    const-string/jumbo v5, "textname"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1300
    const-string/jumbo v5, "dmessage"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1301
    const-string/jumbo v5, "dmessageid"

    .line 1302
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v6

    int-to-long v6, v6

    .line 1301
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1303
    const-string/jumbo v5, "dmessagename"

    .line 1304
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v6

    .line 1303
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1305
    const-string/jumbo v5, "timestamp"

    .line 1306
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v6

    .line 1305
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1307
    if-eqz p2, :cond_3

    .line 1309
    const-string/jumbo v5, "flags"

    .line 1310
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0xe

    int-to-long v6, v6

    .line 1309
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1325
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 1326
    .local v0, "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1327
    const-string/jumbo v5, "categories"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1328
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1329
    const-string/jumbo v6, "categories"

    .line 1328
    invoke-static {v5, v6, p0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1330
    const-string/jumbo v5, "categories"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1333
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object v3

    .line 1334
    .local v3, "intentsNoExtras":[Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1335
    .local v2, "intentsExtras":[Landroid/os/PersistableBundle;
    array-length v4, v3

    .line 1336
    .local v4, "numIntents":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1337
    const-string/jumbo v5, "intent"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1338
    const-string/jumbo v5, "intent-base"

    aget-object v6, v3, v1

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1339
    const-string/jumbo v5, "extras"

    aget-object v6, v2, v1

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1340
    const-string/jumbo v5, "intent"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1336
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1316
    .end local v0    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "intentsExtras":[Landroid/os/PersistableBundle;
    .end local v3    # "intentsNoExtras":[Landroid/content/Intent;
    .end local v4    # "numIntents":I
    :cond_3
    const-string/jumbo v5, "rank"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1318
    const-string/jumbo v5, "flags"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1319
    const-string/jumbo v5, "icon-res"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1320
    const-string/jumbo v5, "icon-resname"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1321
    const-string/jumbo v5, "bitmap-path"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1343
    .restart local v0    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "intentsExtras":[Landroid/os/PersistableBundle;
    .restart local v3    # "intentsNoExtras":[Landroid/content/Intent;
    .restart local v4    # "numIntents":I
    :cond_4
    const-string/jumbo v5, "extras"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1345
    const-string/jumbo v5, "shortcut"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1283
    return-void
.end method

.method private sortShortcutsToActivities()Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 923
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 924
    .local v0, "activitiesToShortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 925
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 926
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 924
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 930
    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 932
    .local v1, "activity":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 933
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v3, :cond_1

    .line 934
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 939
    .end local v1    # "activity":Landroid/content/ComponentName;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    return-object v0
.end method

.method private verifyRanksSequential(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1610
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 1612
    .local v0, "failed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1613
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1614
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1615
    const/4 v0, 0x1

    .line 1616
    const-string/jumbo v3, "ShortcutService.verify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": shortcut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1617
    const-string/jumbo v5, " rank="

    .line 1616
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1617
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v5

    .line 1616
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1617
    const-string/jumbo v5, " but expected to be "

    .line 1616
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1620
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    return v0
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutPackage_lambda$3(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 6
    .param p1, "launcherShortcuts"    # Lcom/android/server/pm/ShortcutLauncher;

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v5

    .line 395
    invoke-virtual {p1, v4, v5}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v2

    .line 398
    .local v2, "pinned":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 399
    :cond_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 402
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 404
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v3, :cond_2

    .line 401
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 411
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    goto :goto_1

    .line 0
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    return-void
.end method

.method public addOrUpdateDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 4
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    .line 228
    const-string/jumbo v3, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    .line 227
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 230
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 232
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 236
    .local v0, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_1

    .line 237
    const/4 v1, 0x0

    .line 247
    :goto_0
    if-eqz v1, :cond_0

    .line 248
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->addShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 225
    return-void

    .line 241
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;)V

    .line 243
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    .local v1, "wasPinned":Z
    goto :goto_0
.end method

.method public adjustRanks()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1099
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v12, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1100
    .local v8, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v4

    .line 1103
    .local v4, "now":J
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v1, v12, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1104
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 1105
    .local v9, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1106
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v12

    if-eqz v12, :cond_0

    .line 1107
    invoke-virtual {v9, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1108
    invoke-virtual {v9, v13}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1103
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1118
    .end local v9    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1119
    .local v0, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "outer":I
    :goto_1
    if-ltz v3, :cond_6

    .line 1120
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1123
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    invoke-static {v2, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1125
    const/4 v6, 0x0

    .line 1127
    .local v6, "rank":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1128
    .local v10, "size":I
    const/4 v1, 0x0

    move v7, v6

    .end local v6    # "rank":I
    .local v7, "rank":I
    :goto_2
    if-ge v1, v10, :cond_5

    .line 1129
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 1130
    .restart local v9    # "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v12

    if-eqz v12, :cond_3

    move v6, v7

    .line 1128
    .end local v7    # "rank":I
    .restart local v6    # "rank":I
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6    # "rank":I
    .restart local v7    # "rank":I
    goto :goto_2

    .line 1135
    :cond_3
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1136
    const-string/jumbo v12, "Non-dynamic shortcut found."

    invoke-virtual {v8, v12}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    move v6, v7

    .line 1137
    .end local v7    # "rank":I
    .restart local v6    # "rank":I
    goto :goto_3

    .line 1139
    .end local v6    # "rank":I
    .restart local v7    # "rank":I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "rank":I
    .restart local v6    # "rank":I
    move v11, v7

    .line 1140
    .local v11, "thisRank":I
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v12

    if-eq v12, v7, :cond_2

    .line 1141
    invoke-virtual {v9, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1142
    invoke-virtual {v9, v7}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    goto :goto_3

    .line 1119
    .end local v6    # "rank":I
    .end local v9    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v11    # "thisRank":I
    .restart local v7    # "rank":I
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1098
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "rank":I
    .end local v10    # "size":I
    :cond_6
    return-void
.end method

.method public clearAllImplicitRanks()V
    .locals 3

    .prologue
    .line 1060
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1061
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1062
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->clearImplicitRankAndRankChangedFlag()V

    .line 1060
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1059
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_0
    return-void
.end method

.method public deleteAllDynamicShortcuts()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 281
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    .line 283
    .local v2, "now":J
    const/4 v0, 0x0

    .line 284
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 285
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 286
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 289
    invoke-virtual {v4, v2, v3}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 290
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 291
    invoke-virtual {v4, v6}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 284
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 294
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    if-eqz v0, :cond_2

    .line 295
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 280
    :cond_2
    return-void
.end method

.method public deleteDynamicWithId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "shortcutId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 309
    .local v0, "removed":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disabledMessage"    # Ljava/lang/String;
    .param p3, "disabledMessageResId"    # I
    .param p4, "overrideImmutable"    # Z

    .prologue
    .line 331
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, p4}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 334
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    .line 335
    if-eqz p2, :cond_1

    .line 336
    invoke-virtual {v0, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-eqz p3, :cond_0

    .line 338
    invoke-virtual {v0, p3}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    .line 340
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1160
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v8, "Package: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v8, "  UID: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    iget v8, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1167
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1169
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    const-string/jumbo v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1171
    const-string/jumbo v8, "Calls: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1173
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    const-string/jumbo v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v8, "Last known FG: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 1180
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1184
    const-string/jumbo v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    const-string/jumbo v8, "Last reset: ["

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 1187
    const-string/jumbo v8, "] "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {v8, v9}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    const-string/jumbo v8, "  Shortcuts:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    const-wide/16 v6, 0x0

    .line 1197
    .local v6, "totalBitmapSize":J
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1198
    .local v1, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1199
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 1200
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1201
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1202
    const-string/jumbo v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1205
    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1206
    .local v2, "len":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    const-string/jumbo v8, "      "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    const-string/jumbo v8, "bitmap size="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1211
    add-long/2addr v6, v2

    .line 1199
    .end local v2    # "len":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    const-string/jumbo v8, "Total bitmap size: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1218
    const-string/jumbo v8, " ("

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1219
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1220
    const-string/jumbo v8, ")"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 14
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1225
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 1227
    .local v5, "result":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 1228
    .local v2, "numDynamic":I
    const/4 v4, 0x0

    .line 1229
    .local v4, "numPinned":I
    const/4 v3, 0x0

    .line 1230
    .local v3, "numManifest":I
    const/4 v1, 0x0

    .line 1231
    .local v1, "numBitmaps":I
    const-wide/16 v10, 0x0

    .line 1233
    .local v10, "totalBitmapSize":J
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1234
    .local v6, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1235
    .local v8, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_4

    .line 1236
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1238
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1239
    :cond_0
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 1240
    :cond_1
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 1242
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1243
    add-int/lit8 v1, v1, 0x1

    .line 1244
    new-instance v9, Ljava/io/File;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 1235
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1248
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4
    const-string/jumbo v9, "dynamic"

    invoke-virtual {v5, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1249
    const-string/jumbo v9, "manifest"

    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1250
    const-string/jumbo v9, "pinned"

    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1251
    const-string/jumbo v9, "bitmaps"

    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1252
    const-string/jumbo v9, "bitmapBytes"

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1256
    return-object v5
.end method

.method public enableWithId(Ljava/lang/String;)V
    .locals 2
    .param p1, "shortcutId"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 374
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 376
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 372
    :cond_0
    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .locals 12
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 968
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v6, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 973
    .local v6, "service":Lcom/android/server/pm/ShortcutService;
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v8, 0x4

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    .line 974
    .local v0, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 975
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 977
    .local v7, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 978
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v0, v8, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 974
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 979
    :cond_1
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 980
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v0, v8, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 984
    .end local v7    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_2
    if-ltz v1, :cond_8

    .line 985
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 986
    .local v3, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 987
    .local v2, "newActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_4

    .line 988
    if-eq p2, v11, :cond_3

    .line 989
    const-string/jumbo v8, "Activity must not be null at this point"

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 984
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 995
    :cond_4
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 996
    .local v5, "original":Landroid/content/pm/ShortcutInfo;
    if-nez v5, :cond_5

    .line 997
    if-eq p2, v11, :cond_3

    .line 1002
    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_3

    .line 1005
    :cond_5
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eq p2, v11, :cond_3

    .line 1013
    :cond_6
    if-eqz p2, :cond_7

    .line 1014
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    .line 1015
    .local v4, "oldActivity":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1016
    const/4 v8, -0x1

    invoke-direct {p0, v0, v4, v8}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1019
    .end local v4    # "oldActivity":Landroid/content/ComponentName;
    :cond_7
    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_3

    .line 1023
    .end local v2    # "newActivity":Landroid/content/ComponentName;
    .end local v3    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "original":Landroid/content/pm/ShortcutInfo;
    :cond_8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_4
    if-ltz v1, :cond_9

    .line 1024
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    .line 1023
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 967
    :cond_9
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 195
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;)V

    .line 194
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V
    .locals 2
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
    .line 188
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 189
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;)V

    .line 188
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .locals 6
    .param p3, "cloneFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    .line 503
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V
    .locals 9
    .param p3, "cloneFlag"    # I
    .param p4, "callingLauncher"    # Ljava/lang/String;
    .param p5, "launcherUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 519
    return-void

    .line 522
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v6, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 525
    .local v4, "s":Lcom/android/server/pm/ShortcutService;
    if-nez p4, :cond_2

    const/4 v3, 0x0

    .line 529
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 530
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 535
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz p4, :cond_3

    .line 536
    if-eqz v3, :cond_4

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 538
    :goto_2
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 539
    if-nez v2, :cond_5

    .line 529
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 526
    .end local v1    # "i":I
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v6

    invoke-virtual {v4, p4, v6, p5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v6

    .line 527
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v8

    .line 526
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v3

    .local v3, "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 535
    .end local v3    # "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    const/4 v2, 0x1

    .local v2, "isPinnedByCaller":Z
    goto :goto_2

    .line 536
    .end local v2    # "isPinnedByCaller":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isPinnedByCaller":Z
    goto :goto_2

    .line 543
    .end local v2    # "isPinnedByCaller":Z
    :cond_5
    invoke-virtual {v5, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 547
    .local v0, "clone":Landroid/content/pm/ShortcutInfo;
    if-nez v2, :cond_6

    .line 548
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 550
    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 551
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 516
    .end local v0    # "clone":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_8
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method getAllShortcutsForTest()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1529
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getApiCallCount()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 426
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 432
    .local v4, "s":Lcom/android/server/pm/ShortcutService;
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 433
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 434
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    move-result-wide v8

    .line 433
    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 435
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 436
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 443
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v0

    .line 445
    .local v0, "last":J
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    .line 446
    .local v2, "now":J
    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v6, v2

    if-lez v5, :cond_2

    .line 447
    const-string/jumbo v5, "ShortcutService"

    const-string/jumbo v6, "Clock rewound"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iput-wide v2, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 450
    iput v10, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 451
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5

    .line 455
    :cond_2
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v6, v0

    if-gez v5, :cond_4

    .line 456
    sget-boolean v5, Lcom/android/server/pm/ShortcutService;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 457
    const-string/jumbo v5, "ShortcutService"

    const-string/jumbo v6, "%s: last reset=%d, now=%d, last=%d: resetting"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 458
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 457
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_3
    iput v10, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 461
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 463
    :cond_4
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5
.end method

.method public getOwnerUserId()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v0

    return v0
.end method

.method public getPackageResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    return v0
.end method

.method public getUsedBitmapFiles()Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 566
    .local v2, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 567
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 568
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 569
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 572
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    return-object v2
.end method

.method public hasNonManifestShortcuts()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1150
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1151
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1152
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1153
    const/4 v2, 0x1

    return v2

    .line 1150
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1156
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    return v3
.end method

.method protected onRestoreBlocked()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 155
    return-void
.end method

.method protected onRestored()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 161
    return-void
.end method

.method public refreshPinnedFlags()V
    .locals 3

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 388
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 394
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 393
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 416
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 386
    return-void
.end method

.method public rescanPackageIfNeeded(ZZ)Z
    .locals 21
    .param p1, "isNewApp"    # Z
    .param p2, "forceRescan"    # Z

    .prologue
    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 629
    .local v12, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v14

    .line 633
    .local v14, "start":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v16, v0

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v18

    .line 633
    invoke-virtual/range {v16 .. v18}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 635
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    if-nez v10, :cond_0

    .line 636
    const/16 v16, 0x0

    .line 677
    const/16 v17, 0xe

    move/from16 v0, v17

    invoke-virtual {v12, v0, v14, v15}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 636
    return v16

    .line 640
    :cond_0
    :try_start_1
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 641
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    .line 646
    .local v7, "isSystemApp":Z
    const-string/jumbo v16, "com.android.settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 650
    .local v6, "isSettings":Z
    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    .line 671
    :cond_1
    if-eqz v6, :cond_2

    .line 672
    sget-boolean v16, Lcom/android/server/pm/ShortcutService;->DEBUG:Z

    if-eqz v16, :cond_2

    .line 673
    const-string/jumbo v16, "ShortcutService"

    const-string/jumbo v17, "Always scan settings."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :cond_2
    const/16 v16, 0xe

    move/from16 v0, v16

    invoke-virtual {v12, v0, v14, v15}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 681
    const/4 v9, 0x0

    .line 683
    .local v9, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v16, v0

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v18

    .line 683
    invoke-static/range {v16 .. v18}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .line 688
    .end local v9    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_0
    if-nez v9, :cond_5

    const/4 v8, 0x0

    .line 690
    .local v8, "manifestShortcutSize":I
    :goto_1
    sget-boolean v16, Lcom/android/server/pm/ShortcutService;->DEBUG:Z

    if-eqz v16, :cond_3

    .line 691
    const-string/jumbo v16, "ShortcutService"

    const-string/jumbo v17, "Package %s has %d manifest shortcut(s)"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    .line 691
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_3
    if-eqz p1, :cond_6

    if-nez v8, :cond_6

    .line 699
    const/16 v16, 0x0

    return v16

    .line 650
    .end local v8    # "manifestShortcutSize":I
    :cond_4
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 665
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()I

    move-result v16

    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    move-result-wide v16

    iget-wide v0, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-nez v16, :cond_1

    .line 667
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v16

    .line 665
    if-eqz v16, :cond_1

    .line 668
    const/16 v16, 0x0

    .line 677
    const/16 v17, 0xe

    move/from16 v0, v17

    invoke-virtual {v12, v0, v14, v15}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 668
    return v16

    .line 676
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "isSettings":Z
    .end local v7    # "isSystemApp":Z
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v16

    .line 677
    const/16 v17, 0xe

    move/from16 v0, v17

    invoke-virtual {v12, v0, v14, v15}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 676
    throw v16

    .line 685
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "isSettings":Z
    .restart local v7    # "isSystemApp":Z
    .restart local v9    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .line 686
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v16, "ShortcutService"

    const-string/jumbo v17, "Failed to load shortcuts from AndroidManifest.xml."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 689
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .restart local v8    # "manifestShortcutSize":I
    goto/16 :goto_1

    .line 701
    :cond_6
    sget-boolean v16, Lcom/android/server/pm/ShortcutService;->DEBUG:Z

    if-eqz v16, :cond_7

    .line 702
    const-string/jumbo v17, "ShortcutService"

    const-string/jumbo v18, "Package %s %s, version %d -> %d"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x0

    aput-object v16, v19, v20

    .line 703
    if-eqz p1, :cond_9

    const-string/jumbo v16, "added"

    :goto_2
    const/16 v20, 0x1

    aput-object v16, v19, v20

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v20, 0x2

    aput-object v16, v19, v20

    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v20, 0x3

    aput-object v16, v19, v20

    .line 702
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutPackageInfo;->updateVersionInfo(Landroid/content/pm/PackageInfo;)V

    .line 709
    const/4 v3, 0x0

    .line 713
    .local v3, "changed":Z
    if-nez p1, :cond_c

    .line 714
    const/4 v11, 0x0

    .line 716
    .local v11, "publisherRes":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    .end local v11    # "publisherRes":Landroid/content/res/Resources;
    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_c

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ShortcutInfo;

    .line 719
    .local v13, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 720
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v16

    if-nez v16, :cond_a

    .line 721
    const-string/jumbo v16, "ShortcutService"

    .line 722
    const-string/jumbo v17, "%s is no longer main activity. Disabling shorcut %s."

    .line 721
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    .line 721
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 716
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 703
    .end local v3    # "changed":Z
    .end local v5    # "i":I
    .end local v13    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_9
    const-string/jumbo v16, "updated"

    goto/16 :goto_2

    .line 729
    .restart local v3    # "changed":Z
    .restart local v5    # "i":I
    .restart local v13    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_a
    const/4 v3, 0x1

    .line 732
    :cond_b
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 733
    invoke-virtual {v13}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v16

    if-nez v16, :cond_f

    .line 734
    if-nez v11, :cond_e

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 736
    .local v11, "publisherRes":Landroid/content/res/Resources;
    if-nez v11, :cond_e

    .line 753
    .end local v5    # "i":I
    .end local v11    # "publisherRes":Landroid/content/res/Resources;
    .end local v13    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    move-result v16

    or-int v3, v3, v16

    .line 755
    .local v3, "changed":Z
    if-eqz v9, :cond_d

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    move-result v16

    or-int v3, v3, v16

    .line 759
    :cond_d
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 761
    if-eqz v3, :cond_10

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 768
    :goto_5
    return v3

    .line 744
    .local v3, "changed":Z
    .restart local v5    # "i":I
    .restart local v13    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_e
    invoke-virtual {v13, v11}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    .line 746
    :cond_f
    const/4 v3, 0x1

    .line 747
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    goto :goto_4

    .line 766
    .end local v5    # "i":I
    .end local v13    # "si":Landroid/content/pm/ShortcutInfo;
    .local v3, "changed":Z
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    goto :goto_5
.end method

.method public resetRateLimiting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 485
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 486
    const-string/jumbo v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetRateLimiting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-lez v0, :cond_1

    .line 489
    iput v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 490
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 484
    :cond_1
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .locals 2

    .prologue
    .line 495
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 496
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 494
    return-void
.end method

.method public resetThrottling()V
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 556
    return-void
.end method

.method public resolveResourceStrings()V
    .locals 8

    .prologue
    .line 1032
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1033
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    const/4 v0, 0x0

    .line 1035
    .local v0, "changed":Z
    const/4 v2, 0x0

    .line 1036
    .local v2, "publisherRes":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .end local v2    # "publisherRes":Landroid/content/res/Resources;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1037
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1039
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1040
    const/4 v0, 0x1

    .line 1042
    if-nez v2, :cond_2

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1044
    .local v2, "publisherRes":Landroid/content/res/Resources;
    if-nez v2, :cond_2

    .line 1053
    .end local v2    # "publisherRes":Landroid/content/res/Resources;
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_0
    if-eqz v0, :cond_1

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1031
    :cond_1
    return-void

    .line 1049
    .restart local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 1050
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1036
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1262
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1264
    .local v1, "size":I
    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-nez v2, :cond_0

    .line 1265
    return-void

    .line 1268
    :cond_0
    const-string/jumbo v2, "package"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1270
    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1271
    const-string/jumbo v2, "call-count"

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    int-to-long v4, v3

    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1272
    const-string/jumbo v2, "last-reset"

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1275
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1276
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1, v2, p2}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V

    .line 1275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1279
    :cond_1
    const-string/jumbo v2, "package"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    return-void
.end method

.method public tryApiCall()Z
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 476
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I

    move-result v1

    iget v2, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt v1, v2, :cond_0

    .line 477
    const/4 v1, 0x0

    return v1

    .line 479
    :cond_0
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 480
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 481
    const/4 v1, 0x1

    return v1
.end method

.method public verifyStates()V
    .locals 11

    .prologue
    .line 1534
    invoke-super {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    .line 1536
    const/4 v2, 0x0

    .line 1539
    .local v2, "failed":Z
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1542
    .local v0, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "outer":I
    :goto_0
    if-ltz v6, :cond_1

    .line 1543
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1544
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v9, v9, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 1545
    const/4 v2, 0x1

    .line 1546
    const-string/jumbo v9, "ShortcutService.verify"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ": activity "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1547
    const-string/jumbo v10, " has "

    .line 1546
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1547
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1546
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1547
    const-string/jumbo v10, " shortcuts."

    .line 1546
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_0
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1555
    .local v1, "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1557
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1558
    .local v5, "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1560
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1561
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1542
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 1565
    .end local v1    # "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v5    # "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_c

    .line 1566
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1567
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    :goto_2
    if-nez v8, :cond_2

    .line 1568
    const/4 v2, 0x1

    .line 1569
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1570
    const-string/jumbo v10, " is not manifest, dynamic or pinned."

    .line 1569
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1573
    const/4 v2, 0x1

    .line 1574
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1575
    const-string/jumbo v10, " is both dynamic and manifest at the same time."

    .line 1574
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1578
    const/4 v2, 0x1

    .line 1579
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1580
    const-string/jumbo v10, " has null activity."

    .line 1579
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_4
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1587
    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1588
    const/4 v2, 0x1

    .line 1589
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1590
    const-string/jumbo v10, " is floating, but has rank="

    .line 1589
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1590
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    .line 1589
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_7
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1593
    const/4 v2, 0x1

    .line 1594
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1595
    const-string/jumbo v10, " still has an icon"

    .line 1594
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_8
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1598
    const/4 v2, 0x1

    .line 1599
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1600
    const-string/jumbo v10, " has both resource and bitmap icons"

    .line 1599
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1567
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1583
    :cond_b
    const/4 v2, 0x1

    .line 1584
    const-string/jumbo v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1585
    const-string/jumbo v10, " is not floating, but is disabled."

    .line 1584
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1604
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_c
    if-eqz v2, :cond_d

    .line 1605
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "See logcat for errors"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1533
    :cond_d
    return-void
.end method
