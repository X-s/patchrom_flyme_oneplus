.class abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "ShortcutPackageItem.java"


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageUserId:I

.field protected mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method protected constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "packageInfo"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 49
    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 50
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 51
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackageInfo;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 47
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 102
    .local v1, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    sget-boolean v2, Lcom/android/server/pm/ShortcutService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 104
    const-string/jumbo v2, "ShortcutService"

    const-string/jumbo v3, "Package still not installed: %s user=%d"

    new-array v4, v8, [Ljava/lang/Object;

    .line 105
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 104
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    return-void

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackageInfo;->hasSignatures()Z

    move-result v2

    if-nez v2, :cond_3

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted to restore package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    const-string/jumbo v3, " but signatures not found in the restore data."

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestoreBlocked()V

    .line 113
    return-void

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 117
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestoreBlocked()V

    .line 120
    return-void

    .line 122
    :cond_4
    sget-boolean v2, Lcom/android/server/pm/ShortcutService;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 123
    const-string/jumbo v2, "ShortcutService"

    const-string/jumbo v3, "Restored package: %s/%d on user %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 124
    iget v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 123
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored()V

    .line 130
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v2, v6}, Lcom/android/server/pm/ShortcutPackageInfo;->setShadow(Z)V

    .line 132
    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 97
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 3
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v0, "result":Lorg/json/JSONObject;
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    return-object v0
.end method

.method public abstract getOwnerUserId()I
.end method

.method public getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUserId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    return v0
.end method

.method public getUser()Lcom/android/server/pm/ShortcutUser;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-object v0
.end method

.method protected abstract onRestoreBlocked()V
.end method

.method protected abstract onRestored()V
.end method

.method public refreshPackageSignatureAndSave()V
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 93
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/ShortcutPackageInfo;->refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 88
    return-void
.end method

.method public replaceUser(Lcom/android/server/pm/ShortcutUser;)V
    .locals 0
    .param p1, "user"    # Lcom/android/server/pm/ShortcutUser;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 57
    return-void
.end method

.method public abstract saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public verifyStates()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
