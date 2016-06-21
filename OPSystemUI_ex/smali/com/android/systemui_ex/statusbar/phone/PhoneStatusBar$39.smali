.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$dismissShade:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;ZZLandroid/content/Intent;Z)V
    .locals 0

    .prologue
    .line 4164
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;->val$intent:Landroid/content/Intent;

    iput-boolean p5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;->val$dismissShade:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4167
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 4184
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;->val$dismissShade:Z

    if-eqz v0, :cond_0

    .line 4185
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 4187
    :cond_0
    return v2
.end method
