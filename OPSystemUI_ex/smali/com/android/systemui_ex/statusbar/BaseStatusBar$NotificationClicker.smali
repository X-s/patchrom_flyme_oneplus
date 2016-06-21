.class public Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationClicker"
.end annotation


# instance fields
.field private mIntent:Landroid/app/PendingIntent;

.field private mIsHeadsUp:Z

.field private final mNotificationKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "notificationKey"    # Ljava/lang/String;
    .param p4, "forHun"    # Z

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1825
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    .line 1826
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mNotificationKey:Ljava/lang/String;

    .line 1827
    iput-boolean p4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mIsHeadsUp:Z

    .line 1828
    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    .prologue
    .line 1819
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mIsHeadsUp:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mNotificationKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1832
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clicked on content of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 1835
    .local v1, "keyguardShowing":Z
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget v6, v6, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v4, v5, v6}, Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 1839
    .local v0, "afterKeyguardGone":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isKeyguardShowingAndOccluded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1840
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 1843
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-virtual {v3, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->setKeyguardOpenNotificationShowClockFlag(Z)V

    .line 1845
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    new-instance v3, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;ZZ)V

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 1900
    return-void

    .end local v0    # "afterKeyguardGone":Z
    :cond_1
    move v0, v3

    .line 1835
    goto :goto_0
.end method
