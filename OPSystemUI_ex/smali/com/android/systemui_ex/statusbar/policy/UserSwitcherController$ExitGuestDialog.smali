.class final Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;
.super Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitGuestDialog"
.end annotation


# instance fields
.field private final mGuestId:I

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Landroid/content/Context;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "guestId"    # I

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .line 527
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 528
    const v0, 0x7f0c0159

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setTitle(I)V

    .line 529
    const v0, 0x7f0c015a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 530
    const/4 v0, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 532
    const/4 v0, -0x1

    const v1, 0x7f0c015b

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setCanceledOnTouchOutside(Z)V

    .line 535
    iput p3, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    .line 536
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 540
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->cancel()V

    .line 546
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->dismiss()V

    .line 544
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->exitGuest(I)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$1100(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;I)V

    goto :goto_0
.end method
