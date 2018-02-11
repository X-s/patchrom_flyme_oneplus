.class public Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;
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
    name = "BytesEditorFragment"
.end annotation


# static fields
.field private static final EXTRA_LIMIT:Ljava/lang/String; = "limit"

.field private static final EXTRA_TEMPLATE:Ljava/lang/String; = "template"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private formatText(F)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 282
    mul-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 283
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 12
    .param p1, "bytesPicker"    # Landroid/widget/EditText;
    .param p2, "type"    # Landroid/widget/Spinner;

    .prologue
    const/4 v11, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/datausage/DataUsageEditController;

    .line 258
    .local v5, "target":Lcom/android/settings_ex/datausage/DataUsageEditController;
    invoke-interface {v5}, Lcom/android/settings_ex/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settings_exlib/NetworkPolicyEditor;

    move-result-object v3

    .line 260
    .local v3, "editor":Lcom/android/settings_exlib/NetworkPolicyEditor;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "template"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkTemplate;

    .line 261
    .local v8, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "limit"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 262
    .local v4, "isLimit":Z
    if-eqz v4, :cond_1

    invoke-virtual {v3, v8}, Lcom/android/settings_exlib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 264
    .local v0, "bytes":J
    :goto_0
    if-eqz v4, :cond_0

    :cond_0
    const-wide/16 v6, -0x1

    .line 266
    .local v6, "limitDisabled":J
    long-to-float v9, v0

    const/high16 v10, 0x4ec00000

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 267
    long-to-float v9, v0

    const/high16 v10, 0x4e800000

    div-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "bytesText":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Landroid/widget/EditText;->setSelection(II)V

    .line 271
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 256
    :goto_1
    return-void

    .line 263
    .end local v0    # "bytes":J
    .end local v2    # "bytesText":Ljava/lang/String;
    .end local v6    # "limitDisabled":J
    :cond_1
    invoke-virtual {v3, v8}, Lcom/android/settings_exlib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .restart local v0    # "bytes":J
    goto :goto_0

    .line 273
    .restart local v6    # "limitDisabled":J
    :cond_2
    long-to-float v9, v0

    const/high16 v10, 0x49800000    # 1048576.0f

    div-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v2

    .line 274
    .restart local v2    # "bytesText":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Landroid/widget/EditText;->setSelection(II)V

    .line 277
    invoke-virtual {p2, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method public static show(Lcom/android/settings_ex/datausage/DataUsageEditController;Z)V
    .locals 5
    .param p0, "parent"    # Lcom/android/settings_ex/datausage/DataUsageEditController;
    .param p1, "isLimit"    # Z

    .prologue
    .line 222
    instance-of v3, p0, Landroid/app/Fragment;

    if-nez v3, :cond_0

    .line 223
    return-void

    :cond_0
    move-object v2, p0

    .line 225
    check-cast v2, Landroid/app/Fragment;

    .line 226
    .local v2, "targetFragment":Landroid/app/Fragment;
    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    return-void

    .line 230
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "template"

    invoke-interface {p0}, Lcom/android/settings_ex/datausage/DataUsageEditController;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 232
    const-string/jumbo v3, "limit"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    new-instance v1, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    .line 235
    .local v1, "dialog":Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 236
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 237
    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "warningEditor"

    invoke-virtual {v1, v3, v4}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 288
    const/4 v9, -0x1

    if-eq p2, v9, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/datausage/DataUsageEditController;

    .line 292
    .local v7, "target":Lcom/android/settings_ex/datausage/DataUsageEditController;
    invoke-interface {v7}, Lcom/android/settings_ex/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settings_exlib/NetworkPolicyEditor;

    move-result-object v4

    .line 294
    .local v4, "editor":Lcom/android/settings_exlib/NetworkPolicyEditor;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "template"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkTemplate;

    .line 295
    .local v8, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "limit"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 296
    .local v5, "isLimit":Z
    iget-object v9, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v10, 0x7f110115

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 297
    .local v2, "bytesField":Landroid/widget/EditText;
    iget-object v9, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v10, 0x7f110116

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 299
    .local v6, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "bytesString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 301
    const-string/jumbo v3, "0"

    .line 303
    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 304
    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    if-nez v10, :cond_2

    const-wide/32 v10, 0x100000

    :goto_0
    long-to-float v10, v10

    .line 303
    mul-float/2addr v9, v10

    float-to-long v0, v9

    .line 305
    .local v0, "bytes":J
    if-eqz v5, :cond_3

    .line 306
    invoke-virtual {v4, v8, v0, v1}, Lcom/android/settings_exlib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 310
    :goto_1
    invoke-interface {v7}, Lcom/android/settings_ex/datausage/DataUsageEditController;->updateDataUsage()V

    .line 287
    return-void

    .line 304
    .end local v0    # "bytes":J
    :cond_2
    const-wide/32 v10, 0x40000000

    goto :goto_0

    .line 308
    .restart local v0    # "bytes":J
    :cond_3
    invoke-virtual {v4, v8, v0, v1}, Lcom/android/settings_exlib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 243
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 244
    .local v1, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "limit"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 245
    .local v2, "isLimit":Z
    const v3, 0x7f04005f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 246
    iget-object v3, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v4, 0x7f110115

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 247
    iget-object v4, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v5, 0x7f110116

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 246
    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 248
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    if-eqz v2, :cond_0

    const v3, 0x7f0e0cde

    .line 248
    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 251
    iget-object v4, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 248
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 252
    const v4, 0x7f0e0cdc

    .line 248
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 250
    :cond_0
    const v3, 0x7f0e0cdd

    goto :goto_0
.end method
