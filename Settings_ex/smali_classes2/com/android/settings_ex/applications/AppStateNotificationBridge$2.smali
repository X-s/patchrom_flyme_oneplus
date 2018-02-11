.class final Lcom/android/settings_ex/applications/AppStateNotificationBridge$2;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppStateNotificationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v1, 0x0

    .line 91
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 92
    :cond_0
    return v1

    .line 94
    :cond_1
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    .line 95
    .local v0, "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    iget v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    if-lez v2, :cond_2

    .line 96
    iget v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    const/4 v1, 0x1

    .line 95
    :cond_2
    return v1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
