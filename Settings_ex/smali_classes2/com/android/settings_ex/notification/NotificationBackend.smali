.class public Lcom/android/settings_ex/notification/NotificationBackend;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationBackend$AppRow;,
        Lcom/android/settings_ex/notification/NotificationBackend$Row;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationBackend"

.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBypassZenMode(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    :try_start_0
    sget-object v2, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->getPriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationBackend"

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    return v1
.end method

.method public getImportance(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 130
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->getImportance(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/16 v1, -0x3e8

    return v1
.end method

.method public getLedEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->isNotificationLedEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling setLedDisabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v1, 0x0

    return v1
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 71
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v3, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    .local v1, "enabled":Z
    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "enabled":Z
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NotificationBackend"

    const-string/jumbo v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    return v2
.end method

.method public getVisibilityOverride(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 101
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->getVisibilityOverride(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/16 v1, -0x3e8

    return v1
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 41
    new-instance v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;-><init>()V

    .line 42
    .local v0, "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    iget-object v2, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 43
    iget v2, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    .line 45
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    .line 52
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notification/NotificationBackend;->getImportance(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    .line 53
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notification/NotificationBackend;->getBypassZenMode(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appBypassDnd:Z

    .line 54
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notification/NotificationBackend;->getVisibilityOverride(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appVisOverride:I

    .line 55
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->lockScreenSecure:Z

    .line 58
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/NotificationBackend;->getLedEnabled(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->ledEnabled:Z

    .line 60
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "NotificationBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "app"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 64
    iget-object v1, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings_ex/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 65
    .local v0, "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/settings_exlib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->systemApp:Z

    .line 66
    return-object v0
.end method

.method public setBypassZenMode(Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "bypassZen"    # Z

    .prologue
    const/4 v2, 0x0

    .line 90
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    .line 91
    if-eqz p3, :cond_0

    const/4 v1, 0x2

    .line 90
    :goto_0
    invoke-interface {v3, p1, p2, v1}, Landroid/app/INotificationManager;->setPriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v1, 0x1

    return v1

    :cond_0
    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    return v2
.end method

.method public setImportance(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 120
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->setImportance(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/4 v1, 0x1

    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/4 v1, 0x0

    return v1
.end method

.method public setLedEnabled(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "ledDisabled"    # Z

    .prologue
    .line 140
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->setNotificationLedStatus(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v1, 0x1

    return v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling setLedDisabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v1, 0x0

    return v1
.end method

.method public setVisibilityOverride(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "override"    # I

    .prologue
    .line 110
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->setVisibilityOverride(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v1, 0x1

    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationBackend"

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v1, 0x0

    return v1
.end method
