.class final Lcom/android/settings_ex/applications/AppStateNotificationBridge$4;
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
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v1, 0x0

    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    return v1

    .line 133
    :cond_1
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->lockScreenSecure:Z

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget v0, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appVisOverride:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 134
    goto :goto_0

    :cond_3
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
