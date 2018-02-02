.class public abstract Landroid/support/v4/app/NotificationCompatSideChannelService;
.super Landroid/app/Service;
.source "NotificationCompatSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatSideChannelService$1;,
        Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/app/NotificationCompatSideChannelService;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    return-void
.end method

.method private checkPermission(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatSideChannelService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 115
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotificationSideChannelService: Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not authorized for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    aget-object v3, v1, v0

    .line 111
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract cancelAll(Ljava/lang/String;)V
.end method

.method public abstract notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    return-object v2

    .line 50
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1

    .line 53
    new-instance v0, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;-><init>(Landroid/support/v4/app/NotificationCompatSideChannelService;Landroid/support/v4/app/NotificationCompatSideChannelService$1;)V

    return-object v0

    .line 51
    :cond_1
    return-object v2
.end method
