.class Lcom/android/internal/policy/impl/UcGlobalActions$4;
.super Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->getBugReportAction()Lcom/android/internal/policy/impl/UcGlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$200(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040147

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 535
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$200(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040145

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 537
    const v2, 0x1040146

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 538
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 539
    const v2, 0x10404d1

    new-instance v3, Lcom/android/internal/policy/impl/UcGlobalActions$4$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$4$1;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions$4;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 563
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 564
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 565
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x1

    return v0
.end method
