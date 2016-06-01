.class public Lcom/oneplus/tuner/fragment/AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private mEditTextName:Landroid/widget/EditText;

.field private mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

.field private mType:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;)V
    .locals 0
    .param p1, "type"    # Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mType:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 0
    .param p1, "type"    # Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;
    .param p2, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mType:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    .line 46
    iput-object p2, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mEditTextName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x104000a

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 77
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030026

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lcom/oneplus/uc/UcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/oneplus/uc/UcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, "builder":Lcom/oneplus/uc/UcAlertDialog$Builder;
    iget-object v3, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mType:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    sget-object v4, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->SAVE:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    if-ne v3, v4, :cond_0

    .line 82
    const v3, 0x7f0c06a0

    invoke-virtual {v0, v3}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setTitle(I)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 87
    :goto_0
    invoke-virtual {v0, v2}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 88
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/oneplus/tuner/fragment/AlertDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/oneplus/tuner/fragment/AlertDialogFragment$2;-><init>(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)V

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 96
    iget-object v3, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mType:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    sget-object v4, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->RENAME:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    if-ne v3, v4, :cond_1

    .line 97
    new-instance v3, Lcom/oneplus/tuner/fragment/AlertDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/oneplus/tuner/fragment/AlertDialogFragment$3;-><init>(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)V

    invoke-virtual {v0, v5, v3}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 146
    :goto_1
    invoke-virtual {v0}, Lcom/oneplus/uc/UcAlertDialog$Builder;->create()Lcom/oneplus/uc/UcAlertDialog;

    move-result-object v3

    return-object v3

    .line 84
    :cond_0
    const v3, 0x7f0c06a1

    invoke-virtual {v0, v3}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setTitle(I)Lcom/oneplus/uc/UcAlertDialog$Builder;

    goto :goto_0

    .line 113
    :cond_1
    new-instance v3, Lcom/oneplus/tuner/fragment/AlertDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/oneplus/tuner/fragment/AlertDialogFragment$4;-><init>(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)V

    invoke-virtual {v0, v5, v3}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 52
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mEditTextName:Landroid/widget/EditText;

    .line 59
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mEditTextName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 61
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 62
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/oneplus/tuner/fragment/AlertDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/fragment/AlertDialogFragment$1;-><init>(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 72
    return-void
.end method
