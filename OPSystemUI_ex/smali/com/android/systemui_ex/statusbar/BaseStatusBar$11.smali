.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;->dismissPopups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

.field final synthetic val$v:Lcom/android/systemui_ex/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/NotificationGuts;)V
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$11;->val$v:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1206
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1207
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$11;->val$v:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1208
    return-void
.end method
