.class final Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;
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
    name = "AddUserDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .line 553
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 554
    const v0, 0x7f0c0160

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->setTitle(I)V

    .line 555
    const v0, 0x7f0c0161

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 556
    const/4 v0, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 558
    const/4 v0, -0x1

    const v1, 0x104000a

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 560
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 564
    const/4 v3, -0x2

    if-ne p2, v3, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->cancel()V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->dismiss()V

    .line 568
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-nez v3, :cond_0

    .line 571
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0155

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 573
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 578
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 579
    .local v1, "id":I
    invoke-static {v1, v6}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 582
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->switchToUserId(I)V
    invoke-static {v3, v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$1200(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;I)V

    goto :goto_0
.end method
