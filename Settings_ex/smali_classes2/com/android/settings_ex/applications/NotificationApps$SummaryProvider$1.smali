.class Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider$1;
.super Lcom/android/settings_ex/applications/AppCounter;
.source "NotificationApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider$1;->this$1:Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/applications/AppCounter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider$1;->this$1:Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;->-get0(Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;)Lcom/android/settings_ex/notification/NotificationBackend;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 54
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected onCountComplete(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider$1;->this$1:Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;

    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;->-wrap0(Lcom/android/settings_ex/applications/NotificationApps$SummaryProvider;I)V

    .line 47
    return-void
.end method
