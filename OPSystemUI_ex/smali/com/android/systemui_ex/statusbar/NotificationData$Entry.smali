.class public final Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public autoRedacted:Z

.field public expanded:Landroid/view/View;

.field public expandedBig:Landroid/view/View;

.field public expandedPublic:Landroid/view/View;

.field public icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

.field private interruption:Z

.field public isDisplayInKeyGuard:Z

.field public key:Ljava/lang/String;

.field public legacy:Z

.field public notification:Landroid/service/notification/StatusBarNotification;

.field private priority:I

.field public row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

.field public targetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui_ex/statusbar/StatusBarIconView;)V
    .locals 1
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ic"    # Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->isDisplayInKeyGuard:Z

    .line 87
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 89
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    .line 90
    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method


# virtual methods
.method public getBigContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->priority:I

    return v0
.end method

.method public getPublicContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 118
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 119
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    .line 120
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->legacy:Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->reset()V

    .line 125
    :cond_0
    return-void
.end method

.method public setBigContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "bigContentView"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInterruption()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->interruption:Z

    .line 105
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->priority:I

    .line 129
    return-void
.end method
