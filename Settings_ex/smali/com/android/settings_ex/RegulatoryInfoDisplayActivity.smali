.class public Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "RegulatoryInfoDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final REGULATORY_INFO_RESOURCE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-string v0, "regulatory_info"

    iput-object v0, p0, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->REGULATORY_INFO_RESOURCE:Ljava/lang/String;

    return-void
.end method

.method private getResourceId()I
    .locals 8

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "regulatory_info"

    const-string v6, "drawable"

    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "resId":I
    const-string v4, "ro.boot.hardware.sku"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "sku":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "regulatory_info_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "regulatory_info_res":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 109
    move v2, v0

    .line 112
    .end local v0    # "id":I
    .end local v1    # "regulatory_info_res":Ljava/lang/String;
    :cond_0
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x2

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 55
    .local v9, "resources":Landroid/content/res/Resources;
    const v11, 0x7f100006

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->finish()V

    .line 59
    :cond_0
    new-instance v11, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v11, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0c0748

    invoke-virtual {v11, v12}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    .line 63
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    const/4 v6, 0x0

    .line 64
    .local v6, "regulatoryInfoDrawableExists":Z
    invoke-direct {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResourceId()I

    move-result v8

    .line 65
    .local v8, "resId":I
    if-eqz v8, :cond_1

    .line 67
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 70
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    if-le v11, v13, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-le v11, v13, :cond_2

    const/4 v6, 0x1

    .line 77
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    const v11, 0x7f0c0c02

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 79
    .local v7, "regulatoryText":Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0400f3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 81
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f1201ed

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    .local v4, "image":Landroid/widget/ImageView;
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    invoke-virtual {v0, v10}, Lcom/oneplus/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 95
    .end local v4    # "image":Landroid/widget/ImageView;
    .end local v10    # "view":Landroid/view/View;
    :goto_1
    return-void

    .line 70
    .end local v7    # "regulatoryText":Ljava/lang/CharSequence;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 72
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 73
    .local v3, "ignored":Landroid/content/res/Resources$NotFoundException;
    const/4 v6, 0x0

    goto :goto_0

    .line 85
    .end local v3    # "ignored":Landroid/content/res/Resources$NotFoundException;
    .restart local v7    # "regulatoryText":Ljava/lang/CharSequence;
    :cond_3
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 86
    invoke-virtual {v0, v7}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    .line 89
    .local v2, "dialog":Lcom/oneplus/app/OPAlertDialog;
    const v11, 0x102000b

    invoke-virtual {v2, v11}, Lcom/oneplus/app/OPAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 90
    .local v5, "messageText":Landroid/widget/TextView;
    const/16 v11, 0x11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 93
    .end local v2    # "dialog":Lcom/oneplus/app/OPAlertDialog;
    .end local v5    # "messageText":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->finish()V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->finish()V

    .line 118
    return-void
.end method
