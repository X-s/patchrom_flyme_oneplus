.class public Lcom/android/settings_ex/WapiCertMgmtDialog;
.super Landroid/app/AlertDialog;
.source "WapiCertMgmtDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
.field private mASCertEdit:Landroid/widget/EditText;

.field private mASCertText:Landroid/widget/TextView;

.field private mCancelButtonPos:I

.field private mCreateSubdirEdit:Landroid/widget/EditText;

.field private mCreateSubdirText:Landroid/widget/TextView;

.field private mCustomTitle:Ljava/lang/CharSequence;

.field private mDeletDirSpinner:Landroid/widget/Spinner;

.field private mDeletDirText:Landroid/widget/TextView;

.field private mInstallButtonPos:I

.field private mMode:I

.field private mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

.field private mUninstallButtonPos:I

.field private mUninstallCerts:Ljava/lang/String;

.field private mUserCertEdit:Landroid/widget/EditText;

.field private mUserCertText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7fffffff

    .line 97
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mMode:I

    .line 70
    iput v1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mInstallButtonPos:I

    .line 71
    iput v1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallButtonPos:I

    .line 72
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

    .line 388
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 389
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 390
    .local v4, "i":I
    const-string v6, "WapiCertMgmtDialog"

    const-string v7, "copyFile"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .local v2, "fI":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    .local v3, "fO":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 410
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 421
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 422
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 427
    const/4 v5, 0x1

    .end local v2    # "fI":Ljava/io/FileInputStream;
    .end local v3    # "fO":Ljava/io/FileOutputStream;
    :goto_1
    return v5

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 399
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fI":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 400
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 406
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fO":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 407
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 414
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 415
    :catch_3
    move-exception v1

    .line 416
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 423
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 424
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
    .line 597
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
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

    .line 600
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 601
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 602
    .local v0, "delFile":[Ljava/io/File;
    array-length v2, v0

    .line 604
    .local v2, "fileNum":I
    if-nez v2, :cond_2

    .line 605
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 612
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 616
    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    :cond_1
    :goto_0
    return-void

    .line 607
    .restart local v0    # "delFile":[Ljava/io/File;
    .restart local v2    # "fileNum":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 608
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, "subdirectory":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 607
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 613
    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    .end local v3    # "i":I
    .end local v4    # "subdirectory":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 614
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getDeletDirFromSpinner()I
    .locals 2

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 576
    .local v0, "position":I
    return v0
.end method

.method private getInput(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .param p1, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 524
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

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
    .line 620
    return-void
.end method

.method private handleDeletDirChange(I)V
    .locals 4
    .param p1, "deletDirIdx"    # I

    .prologue
    .line 583
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/wapi_certificate"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 594
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 589
    .local v0, "certificateList":[Ljava/io/File;
    aget-object v3, v0, p1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    .end local v0    # "certificateList":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 592
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
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const-string v14, "Cert. base dir create failed"

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 382
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

    iget-object v13, v0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, "subdir":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 201
    :cond_2
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0903d5

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0903d6

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0903d7

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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

    iget-object v13, v0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mASCertEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "asCert":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 237
    :cond_6
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0903d8

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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

    .line 249
    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    .line 251
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 252
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

    .line 253
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

    .line 254
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

    .line 255
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

    .line 256
    new-instance v5, Ljava/io/File;

    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
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

    .line 259
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    .line 260
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

    .line 261
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

    .line 262
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 263
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

    .line 264
    new-instance v5, Ljava/io/File;

    .end local v5    # "fileASCert":Ljava/io/File;
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
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

    .line 267
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    .line 268
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

    .line 269
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

    .line 270
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    sput-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 271
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

    .line 272
    new-instance v5, Ljava/io/File;

    .end local v5    # "fileASCert":Ljava/io/File;
    sget-object v13, Lcom/android/settings_ex/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
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

    .line 275
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    .line 276
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

    .line 277
    const-string v13, "WapiCertMgmtDialog"

    const-string v14, "Hence ABORTING!!!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0903d9

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
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

    .line 293
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

    .line 294
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0903da

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 300
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
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

    .line 304
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

    .line 306
    .local v6, "fileDestAS":Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    :catch_1
    move-exception v4

    .line 308
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 316
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUserCertEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v12

    .line 321
    .local v12, "userCert":Ljava/lang/String;
    if-eqz v12, :cond_c

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 322
    :cond_c
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0903dc

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 328
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
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

    .line 332
    .local v8, "fileUserCert":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_e

    .line 333
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0903dd

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
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

    .line 343
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090541

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1080027

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0903db

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 349
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
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

    .line 354
    .local v7, "fileDestUser":Ljava/io/File;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 358
    :goto_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 359
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/settings_ex/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :catch_2
    move-exception v4

    .line 356
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 364
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    :cond_11
    const/16 v13, 0x1c7

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v10, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 369
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

    .line 370
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

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

    invoke-interface {v13}, Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;->refreashAdvance()V

    goto/16 :goto_0
.end method

.method private handleUninstall()V
    .locals 2

    .prologue
    .line 528
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "handleUninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

    invoke-interface {v0}, Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;->refreashAdvance()V

    .line 540
    :cond_0
    return-void
.end method

.method private isAsCertificate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "ascert"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 442
    const-string v2, "BEGIN CERTIFICATE"

    .line 443
    .local v2, "stringCertBegin":Ljava/lang/String;
    const-string v3, "END CERTIFICATE"

    .line 444
    .local v3, "stringCertEnd":Ljava/lang/String;
    const-string v4, "BEGIN EC PRIVATE KEY"

    .line 445
    .local v4, "stringECBegin":Ljava/lang/String;
    const-string v5, "END EC PRIVATE KEY"

    .line 446
    .local v5, "stringECEnd":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "as":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v7, v8, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v6

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 456
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-ne v7, v8, :cond_0

    .line 464
    :try_start_2
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-nez v8, :cond_0

    .line 472
    :try_start_3
    invoke-virtual {p0, v5, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    .line 479
    goto :goto_0

    .line 459
    :catch_1
    move-exception v1

    .line 460
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 467
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 468
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 475
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 476
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

    .line 483
    const-string v1, "BEGIN CERTIFICATE"

    .line 484
    .local v1, "stringCertBegin":Ljava/lang/String;
    const-string v2, "END CERTIFICATE"

    .line 485
    .local v2, "stringCertEnd":Ljava/lang/String;
    const-string v3, "BEGIN EC PRIVATE KEY"

    .line 486
    .local v3, "stringECBegin":Ljava/lang/String;
    const-string v4, "END EC PRIVATE KEY"

    .line 487
    .local v4, "stringECEnd":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .local v5, "user":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v1, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v7, v8, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v6

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 497
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-ne v7, v8, :cond_0

    .line 505
    :try_start_2
    invoke-virtual {p0, v3, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-ne v7, v8, :cond_0

    .line 513
    :try_start_3
    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-ne v7, v8, :cond_0

    move v6, v7

    .line 520
    goto :goto_0

    .line 500
    :catch_1
    move-exception v0

    .line 501
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 508
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 509
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 516
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 517
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
    const v3, 0x7f040086

    invoke-direct {p0, v3}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setLayout(I)V

    .line 114
    const v2, 0x7f0900ba

    .line 115
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mInstallButtonPos:I

    .line 121
    :cond_0
    :goto_0
    const v0, 0x7f0900bc

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
    const v3, 0x7f040087

    invoke-direct {p0, v3}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setLayout(I)V

    .line 118
    const v1, 0x7f0900bb

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
    const v0, 0x7f0f0180

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCreateSubdirText:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0f0181

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    .line 138
    const v0, 0x7f0f0182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mASCertText:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0f0183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mASCertEdit:Landroid/widget/EditText;

    .line 141
    const v0, 0x7f0f0184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUserCertText:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0f0185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mUserCertEdit:Landroid/widget/EditText;

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
    const v0, 0x7f0f0186

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirText:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0f0187

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
    .line 544
    invoke-virtual {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 546
    .local v4, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v1, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/wapi_certificate"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v3, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 572
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 558
    .local v2, "certificateList":[Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_1

    .line 559
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 562
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

    .line 565
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v7, 0x1090009

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 566
    iget-object v7, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2    # "certificateList":[Ljava/io/File;
    .end local v6    # "i":I
    :catch_0
    move-exception v5

    .line 569
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
    .line 623
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onClick View "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->onLayout()V

    .line 103
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

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
    .line 631
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onItemSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getDeletDirFromSpinner()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->handleDeletDirChange(I)V

    .line 635
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 627
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onNothingSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
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
    .line 431
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 432
    .local v1, "reader":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x800

    invoke-direct {v2, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 433
    .local v2, "reader2":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 434
    .local v3, "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 436
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

    .line 437
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 438
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
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;

    .line 94
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 646
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 639
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 640
    iput-object p1, p0, Lcom/android/settings_ex/WapiCertMgmtDialog;->mCustomTitle:Ljava/lang/CharSequence;

    .line 641
    return-void
.end method
