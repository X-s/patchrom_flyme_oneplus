.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field final synthetic val$nlo:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$26;->val$nlo:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "_a"    # Landroid/animation/Animator;

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$26;->val$nlo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2447
    return-void
.end method
