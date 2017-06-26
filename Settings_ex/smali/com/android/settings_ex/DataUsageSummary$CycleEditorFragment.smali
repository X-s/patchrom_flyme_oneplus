.class public Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# static fields
.field private static final EXTRA_TEMPLATE:Ljava/lang/String; = "template"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2078
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 2082
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2091
    :goto_0
    return-void

    .line 2084
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2085
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$3000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2087
    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 2088
    .local v1, "dialog":Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2089
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2090
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    .line 2095
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2096
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/DataUsageSummary;

    .line 2097
    .local v5, "target":Lcom/android/settings_ex/DataUsageSummary;
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->access$3100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v3

    .line 2099
    .local v3, "editor":Lcom/android/settings_ex/net/NetworkPolicyEditor;
    new-instance v6, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v6, v7}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2100
    .local v6, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    invoke-virtual {v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2102
    .local v9, "dialogInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040040

    const/4 v1, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 2103
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f120072

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2105
    .local v2, "cycleDayPicker":Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2106
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v8

    .line 2108
    .local v8, "cycleDay":I
    invoke-virtual {v2, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2109
    const/16 v0, 0x1f

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2110
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2111
    invoke-virtual {v2, v12}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2113
    const v0, 0x7f0c0b0a

    invoke-virtual {v6, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2114
    invoke-virtual {v6, v10}, Lcom/oneplus/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2116
    const v11, 0x7f0c0b0c

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ex/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v6, v11, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2130
    invoke-virtual {v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    return-object v0
.end method
