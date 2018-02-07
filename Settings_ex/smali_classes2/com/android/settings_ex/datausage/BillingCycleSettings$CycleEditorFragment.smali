.class public Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# static fields
.field private static final EXTRA_TEMPLATE:Ljava/lang/String; = "template"


# instance fields
.field private mCycleDayPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/datausage/BillingCycleSettings;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings_ex/datausage/BillingCycleSettings;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 325
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "template"

    invoke-static {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->-get0(Lcom/android/settings_ex/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    new-instance v1, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;-><init>()V

    .line 329
    .local v1, "dialog":Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 330
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 322
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "template"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 363
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/datausage/DataUsageEditController;

    .line 364
    .local v3, "target":Lcom/android/settings_ex/datausage/DataUsageEditController;
    invoke-interface {v3}, Lcom/android/settings_ex/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settings_exlib/NetworkPolicyEditor;

    move-result-object v2

    .line 367
    .local v2, "editor":Lcom/android/settings_exlib/NetworkPolicyEditor;
    iget-object v5, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 369
    iget-object v5, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 370
    .local v0, "cycleDay":I
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 371
    .local v1, "cycleTimezone":Ljava/lang/String;
    invoke-virtual {v2, v4, v0, v1}, Lcom/android/settings_exlib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 372
    invoke-interface {v3}, Lcom/android/settings_ex/datausage/DataUsageEditController;->updateDataUsage()V

    .line 361
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 336
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 337
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/datausage/DataUsageEditController;

    .line 338
    .local v5, "target":Lcom/android/settings_ex/datausage/DataUsageEditController;
    invoke-interface {v5}, Lcom/android/settings_ex/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settings_exlib/NetworkPolicyEditor;

    move-result-object v4

    .line 340
    .local v4, "editor":Lcom/android/settings_exlib/NetworkPolicyEditor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 343
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040061

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 344
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f11011f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    .line 346
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "template"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    .line 347
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v4, v6}, Lcom/android/settings_exlib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v2

    .line 349
    .local v2, "cycleDay":I
    iget-object v8, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v11}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 350
    iget-object v8, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    const/16 v9, 0x1f

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 351
    iget-object v8, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 352
    iget-object v8, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v11}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 354
    const v8, 0x7f0e0cac

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 356
    const v9, 0x7f0e0cae

    .line 354
    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method
