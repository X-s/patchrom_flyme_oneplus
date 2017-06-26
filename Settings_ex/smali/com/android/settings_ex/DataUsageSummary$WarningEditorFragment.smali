.class public Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningEditorFragment"
.end annotation


# static fields
.field private static final EXTRA_TEMPLATE:Ljava/lang/String; = "template"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2137
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 2141
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2150
    :goto_0
    return-void

    .line 2143
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2144
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$3000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2146
    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 2147
    .local v1, "dialog":Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2148
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2149
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2154
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2155
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/DataUsageSummary;

    .line 2156
    .local v5, "target":Lcom/android/settings_ex/DataUsageSummary;
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->access$3100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v3

    .line 2158
    .local v3, "editor":Lcom/android/settings_ex/net/NetworkPolicyEditor;
    new-instance v6, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v6, v7}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2159
    .local v6, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    invoke-virtual {v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2161
    .local v8, "dialogInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04003e

    const/4 v1, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v0, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 2162
    .local v12, "view":Landroid/view/View;
    const v0, 0x7f12006b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2164
    .local v2, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2165
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v14

    .line 2166
    .local v14, "warningBytes":J
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    .line 2168
    .local v10, "limitBytes":J
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2169
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_1

    .line 2174
    const-wide/32 v0, 0x100000

    div-long v0, v10, v0

    long-to-int v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 2175
    .local v9, "max":I
    if-gez v9, :cond_0

    const/4 v9, 0x0

    .end local v9    # "max":I
    :cond_0
    invoke-virtual {v2, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2179
    :goto_0
    const-wide/32 v0, 0x100000

    div-long v0, v14, v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2180
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2182
    const v0, 0x7f0c0b0d

    invoke-virtual {v6, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2183
    invoke-virtual {v6, v12}, Lcom/oneplus/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2185
    const v13, 0x7f0c0b0c

    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment$1;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ex/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v6, v13, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2198
    invoke-virtual {v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    return-object v0

    .line 2177
    :cond_1
    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0
.end method
