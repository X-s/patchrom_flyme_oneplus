.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$18;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$18;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$18;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$18$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$18$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$18;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->post(Ljava/lang/Runnable;)Z

    .line 1345
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$18;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 1346
    return-void
.end method
