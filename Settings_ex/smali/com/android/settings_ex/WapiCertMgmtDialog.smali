.class public Lcom/android/settings_ex/WapiCertMgmtDialog;
.super Lcom/oneplus/app/OPAlertDialog;
.source "WapiCertMgmtDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;
    }
.end annotation


# static fields
.field private static final CANCEL_BUTTON:I = -0x2

.field private static final DEFAULT_CERTIFICATE_PATH:Ljava/lang/String; = "/data/wapi_certificate"

.field private static final INSTALL_BUTTON:I = -0x1

.field private static final InstallTitle:Ljava/lang/String; = "Install"

.field public static final MODE_INSTALL:I = 0x0

.field public static final MODE_UNINSTALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WapiCertMgmtDialog"

.field private static final UNINSTALL_BUTTON:I = -0x3

.field private static final UninstallTitle:Ljava/lang/String; = "Uninstall"

.field private static certificate_installation_path:Ljava/lang/String;

.field private static certificate_path:Ljava/lang/String;

.field private static default_sdcard_path:Ljava/lang/String;

.field private static external_sdcard_path:Ljava/lang/String;

.field private static wifi_sdcard_path:Ljava/lang/String;


# instance fields
.field private mASCertEdit:Lcom/oneplus/widget/OPEditText;

.field private mASCertText:Landroid/widget/TextView;

.field private mCancelButtonPos:I

.field private mCreateSubdirEdit:Lcom/oneplus/widget/OPEditText;

.field private mCreateSubdirText:Landroid/widget/TextView;

.field private mCustomTitle:Ljava/lang/CharSequence;

.field private mDeletDirSpinner:Landroid/widget/Spinner;

.field private mDeletDirText:Landroid/widget/TextView;

.field private mInstallButtonPos:I

.field private mMode:I

.field private mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

.field private mUninstallButtonPos:I

.field private mUninstallCerts:Ljava/lang/String;

.field private mUserCertEdit:Lcom/oneplus/widget/OPEditText;

.field private mUserCertText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7fffffff

    .line 97
    invoke-direct {p0, p1}, Lcom/oneplus/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mMode:I

    .line 73
    iput v1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mInstallButtonPos:I

    .line 74
    iput v1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallButtonPos:I

    .line 75
    iput v1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCancelButtonPos:I

    .line 98
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p1, "fileDest"    # Ljava/io/File;
    .param p2, "fileSource"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 382
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 383
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 384
    .local v4, "i":I
    const-string v6, "WapiCertMgmtDialog"

    const-string v7, "copyFile"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .local v2, "fI":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    .local v3, "fO":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 404
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 415
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 416
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 421
    const/4 v5, 0x1

    .end local v2    # "fI":Ljava/io/FileInputStream;
    .end local v3    # "fO":Ljava/io/FileOutputStream;
    :goto_1
    return v5

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fI":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 394
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 400
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fO":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 401
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 408
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 409
    :catch_3
    move-exception v1

    .line 410
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 417
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 418
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private deleteAll(Ljava/lang/String;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 588
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    .local v1, "f":Ljava/io/File;
    const-string v5, "WapiCertMgmtDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAll filepath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 592
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 593
    .local v0, "delFile":[Ljava/io/File;
    array-length v2, v0

    .line 595
    .local v2, "fileNum":I
    if-nez v2, :cond_2

    .line 596
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 603
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 607
    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    :cond_1
    :goto_0
    return-void

    .line 598
    .restart local v0    # "delFile":[Ljava/io/File;
    .restart local v2    # "fileNum":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 599
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "subdirectory":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 598
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 604
    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    .end local v3    # "i":I
    .end local v4    # "subdirectory":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 605
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getDeletDirFromSpinner()I
    .locals 2

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 567
    .local v0, "position":I
    return v0
.end method

.method private getInput(Lcom/oneplus/widget/OPEditText;)Ljava/lang/String;
    .locals 1
    .param p1, "edit"    # Lcom/oneplus/widget/OPEditText;

    .prologue
    .line 518
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCancle()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method private handleDeletDirChange(I)V
    .locals 4
    .param p1, "deletDirIdx"    # I

    .prologue
    .line 574
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/wapi_certificate"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 585
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 580
    .local v0, "certificateList":[Ljava/io/File;
    aget-object v3, v0, p1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    .end local v0    # "certificateList":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 583
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleInstall()V
    .locals 17

    .prologue
    .line 181
    const-string v13, "WapiCertMgmtDialog"

    const-string v14, "handleInstall"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v9, "/data/wapi_certificate"

    .line 184
    .local v9, "stringDefDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "defDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 188
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const-string v14, "Cert. base dir create failed"

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 377
    :goto_0
    return-void

    .line 196
    :cond_0
    const/16 v13, 0x1ff

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v9, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 199
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCreateSubdirEdit:Lcom/oneplus/widget/OPEditText;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getInput(Lcom/oneplus/widget/OPEditText;)Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, "subdir":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 201
    :cond_2
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0c0547

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    goto :goto_0

    .line 209
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/data/wapi_certificate/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "stringDestDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v3, "destDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 212
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0c0548

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    goto/16 :goto_0

    .line 221
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_5

    .line 226
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0c0549

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception v4

    .line 223
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 235
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mASCertEdit:Lcom/oneplus/widget/OPEditText;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getInput(Lcom/oneplus/widget/OPEditText;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "asCert":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 237
    :cond_6
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0c054a

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 243
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :cond_7
    const-string v13, "/system/wifi/sdcard"

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    .line 248
    const-string v13, "SECONDARY_STORAGE"

    invoke-static {v13}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    .line 250
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    .line 252
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 253
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "default_sdcard_path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings_ex/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "asCert file:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings_ex/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    .line 256
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "certificate_path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v5, Ljava/io/File;

    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v5, "fileASCert":Ljava/io/File;
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileASCert.exists(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    .line 261
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Certificate path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " does not exist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Hence trying with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings_ex/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 264
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings_ex/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    .line 265
    new-instance v5, Ljava/io/File;

    .end local v5    # "fileASCert":Ljava/io/File;
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v5    # "fileASCert":Ljava/io/File;
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileASCert.exists(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    .line 269
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Secondary certificate path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " does not exist."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Hence trying with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings_ex/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 272
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings_ex/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    .line 273
    new-instance v5, Ljava/io/File;

    .end local v5    # "fileASCert":Ljava/io/File;
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v5    # "fileASCert":Ljava/io/File;
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileASCert.exists(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    .line 277
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wifi certificate path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " does not exist."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v13, "WapiCertMgmtDialog"

    const-string v14, "Hence ABORTING!!!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0c054b

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 285
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_8
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "certificate is installing from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->isAsCertificate(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 295
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0c054c

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 301
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_9
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleInstall Create AS Cert: = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "as.cer"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v6, "fileDestAS":Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 313
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :catch_1
    move-exception v4

    .line 309
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 317
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUserCertEdit:Lcom/oneplus/widget/OPEditText;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getInput(Lcom/oneplus/widget/OPEditText;)Ljava/lang/String;

    move-result-object v12

    .line 322
    .local v12, "userCert":Ljava/lang/String;
    if-eqz v12, :cond_c

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 323
    :cond_c
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0c054e

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_d
    new-instance v8, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v8, "fileUserCert":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_e

    .line 334
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0c054f

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 340
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->isUserCertificate(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 344
    new-instance v13, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c06d8

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0c054d

    invoke-virtual {v13, v14}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_f
    new-instance v7, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "user.cer"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v7, "fileDestUser":Ljava/io/File;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 359
    :goto_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/settings_ex/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 361
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :catch_2
    move-exception v4

    .line 357
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 365
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :cond_11
    const/16 v13, 0x1c7

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v10, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 370
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "user.cer"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x124

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 371
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "as.cer"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x124

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

    invoke-interface {v13}, Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;->refreashAdvance()V

    goto/16 :goto_0
.end method

.method private handleUninstall()V
    .locals 2

    .prologue
    .line 522
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "handleUninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

    invoke-interface {v0}, Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;->refreashAdvance()V

    .line 533
    :cond_1
    return-void
.end method

.method private isAsCertificate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "ascert"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 436
    const-string v2, "BEGIN CERTIFICATE"

    .line 437
    .local v2, "stringCertBegin":Ljava/lang/String;
    const-string v3, "END CERTIFICATE"

    .line 438
    .local v3, "stringCertEnd":Ljava/lang/String;
    const-string v4, "BEGIN EC PRIVATE KEY"

    .line 439
    .local v4, "stringECBegin":Ljava/lang/String;
    const-string v5, "END EC PRIVATE KEY"

    .line 440
    .local v5, "stringECEnd":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "as":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v7, v8, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v6

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 450
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-ne v7, v8, :cond_0

    .line 458
    :try_start_2
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-nez v8, :cond_0

    .line 466
    :try_start_3
    invoke-virtual {p0, v5, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    .line 473
    goto :goto_0

    .line 453
    :catch_1
    move-exception v1

    .line 454
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 462
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 470
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isUserCertificate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "usercert"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 477
    const-string v1, "BEGIN CERTIFICATE"

    .line 478
    .local v1, "stringCertBegin":Ljava/lang/String;
    const-string v2, "END CERTIFICATE"

    .line 479
    .local v2, "stringCertEnd":Ljava/lang/String;
    const-string v3, "BEGIN EC PRIVATE KEY"

    .line 480
    .local v3, "stringECBegin":Ljava/lang/String;
    const-string v4, "END EC PRIVATE KEY"

    .line 481
    .local v4, "stringECEnd":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v5, "user":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v1, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v7, v8, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v6

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-ne v7, v8, :cond_0

    .line 499
    :try_start_2
    invoke-virtual {p0, v3, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-ne v7, v8, :cond_0

    .line 507
    :try_start_3
    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-ne v7, v8, :cond_0

    move v6, v7

    .line 514
    goto :goto_0

    .line 494
    :catch_1
    move-exception v0

    .line 495
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 502
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 503
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 511
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, "positiveButtonResId":I
    const/4 v0, 0x0

    .line 108
    .local v0, "negativeButtonResId":I
    const/4 v1, 0x0

    .line 110
    .local v1, "neutralButtonResId":I
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setInverseBackgroundForced(Z)V

    .line 112
    iget v3, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mMode:I

    if-nez v3, :cond_1

    .line 113
    const v3, 0x7f04015a

    invoke-direct {p0, v3}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setLayout(I)V

    .line 114
    const v2, 0x7f0c0540

    .line 115
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mInstallButtonPos:I

    .line 121
    :cond_0
    :goto_0
    const v0, 0x7f0c0542

    .line 122
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCancelButtonPos:I

    .line 124
    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setButtons(III)V

    .line 125
    return-void

    .line 116
    :cond_1
    iget v3, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mMode:I

    if-ne v3, v4, :cond_0

    .line 117
    const v3, 0x7f04015b

    invoke-direct {p0, v3}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setLayout(I)V

    .line 118
    const v1, 0x7f0c0541

    .line 119
    const/4 v3, -0x3

    iput v3, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallButtonPos:I

    goto :goto_0
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mMode:I

    if-nez v0, :cond_1

    .line 135
    const v0, 0x7f1202c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCreateSubdirText:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f1202c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/OPEditText;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCreateSubdirEdit:Lcom/oneplus/widget/OPEditText;

    .line 138
    const v0, 0x7f1202c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mASCertText:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f1202c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/OPEditText;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mASCertEdit:Lcom/oneplus/widget/OPEditText;

    .line 141
    const v0, 0x7f1202c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUserCertText:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f1202c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/OPEditText;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUserCertEdit:Lcom/oneplus/widget/OPEditText;

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    const v0, 0x7f1202c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirText:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f1202c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setDeletDirSpinnerAdapter()V

    goto :goto_0
.end method

.method private setButtons(III)V
    .locals 1
    .param p1, "positiveResId"    # I
    .param p2, "negativeResId"    # I
    .param p3, "neutralResId"    # I

    .prologue
    .line 156
    if-lez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    :cond_0
    if-lez p3, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 164
    :cond_1
    if-lez p2, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    :cond_2
    return-void
.end method

.method private setDeletDirSpinnerAdapter()V
    .locals 9

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 538
    .local v4, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v1, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/wapi_certificate"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v3, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 563
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 550
    .local v2, "certificateList":[Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_1

    .line 551
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 554
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v0, v4, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 557
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v7, 0x1090009

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 558
    iget-object v7, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2    # "certificateList":[Ljava/io/File;
    .end local v6    # "i":I
    :catch_0
    move-exception v5

    .line 561
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setLayout(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->onReferenceViews(Landroid/view/View;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 170
    const-string v0, "WapiCertMgmtDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick which "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mInstallButtonPos:I

    if-ne p2, v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->handleInstall()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallButtonPos:I

    if-ne p2, v0, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->handleUninstall()V

    goto :goto_0

    .line 175
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCancelButtonPos:I

    if-ne p2, v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->handleCancle()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 614
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onClick View "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->onLayout()V

    .line 103
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 622
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onItemSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getDeletDirFromSpinner()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->handleDeletDirChange(I)V

    .line 626
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 618
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onNothingSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method public searchString(Ljava/lang/String;Ljava/io/File;)I
    .locals 5
    .param p1, "find_str"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 426
    .local v1, "reader":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x800

    invoke-direct {v2, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 427
    .local v2, "reader2":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 428
    .local v3, "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "buffer":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 432
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    return v4
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mMode:I

    .line 152
    return-void
.end method

.method public setRefreshAdvance(Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;)V
    .locals 0
    .param p1, "refresh"    # Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

    .line 94
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 637
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 630
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 631
    iput-object p1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCustomTitle:Ljava/lang/CharSequence;

    .line 632
    return-void
.end method
