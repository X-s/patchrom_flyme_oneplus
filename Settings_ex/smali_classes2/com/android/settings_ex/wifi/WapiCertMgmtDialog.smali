.class public Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;
.super Landroid/app/AlertDialog;
.source "WapiCertMgmtDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;
    }
.end annotation


# static fields
.field private static final CANCEL_BUTTON:I = -0x2

.field private static final DEFAULT_CERTIFICATE_PATH:Ljava/lang/String; = "/data/misc/wapi_certificate"

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

.field private mRefreshAdvance:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;

.field private mStorageManager:Landroid/os/storage/StorageManager;

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

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    .line 72
    iput v1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mInstallButtonPos:I

    .line 73
    iput v1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallButtonPos:I

    .line 74
    iput v1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCancelButtonPos:I

    .line 96
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p1, "fileDest"    # Ljava/io/File;
    .param p2, "fileSource"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 393
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 394
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 395
    .local v4, "i":I
    const-string/jumbo v5, "WapiCertMgmtDialog"

    const-string/jumbo v6, "copyFile"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .local v2, "fI":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    .local v3, "fO":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 415
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 426
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 427
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 432
    const/4 v5, 0x1

    return v5

    .line 398
    .end local v2    # "fI":Ljava/io/FileInputStream;
    .end local v3    # "fO":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 400
    return v7

    .line 404
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fI":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 405
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 406
    return v7

    .line 411
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fO":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 412
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 413
    return v7

    .line 419
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 420
    :catch_3
    move-exception v1

    .line 421
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 422
    return v7

    .line 428
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 429
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 430
    return v7
.end method

.method private deleteAll(Ljava/lang/String;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 595
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, "f":Ljava/io/File;
    const-string/jumbo v5, "WapiCertMgmtDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteAll filepath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 599
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 600
    .local v0, "delFile":[Ljava/io/File;
    array-length v2, v0

    .line 602
    .local v2, "fileNum":I
    if-nez v2, :cond_2

    .line 603
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 610
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 594
    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    :cond_1
    :goto_0
    return-void

    .line 605
    .restart local v0    # "delFile":[Ljava/io/File;
    .restart local v2    # "fileNum":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 606
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, "subdirectory":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 605
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 611
    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    .end local v3    # "i":I
    .end local v4    # "subdirectory":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 612
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getDeletDirFromSpinner()I
    .locals 2

    .prologue
    .line 573
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 574
    .local v0, "position":I
    return v0
.end method

.method private getInput(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .param p1, "edit"    # Landroid/widget/EditText;

    .prologue
    const/4 v0, 0x0

    .line 529
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private handleCancle()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method private handleDeletDirChange(I)V
    .locals 4
    .param p1, "deletDirIdx"    # I

    .prologue
    .line 581
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/misc/wapi_certificate"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v1, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 584
    return-void

    .line 586
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 587
    .local v0, "certificateList":[Ljava/io/File;
    aget-object v3, v0, p1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v0    # "certificateList":[Ljava/io/File;
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v2

    .line 590
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleInstall()V
    .locals 22

    .prologue
    .line 181
    const-string/jumbo v18, "WapiCertMgmtDialog"

    const-string/jumbo v19, "handleInstall"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v13, "/data/misc/wapi_certificate"

    .line 184
    .local v13, "stringDefDir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v4, "defDir":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v17

    .line 189
    .local v17, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 190
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 191
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 192
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const v19, 0x7f0e0933

    .line 192
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 194
    const v19, 0x1080027

    .line 192
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 195
    const-string/jumbo v19, "Cert. base dir create failed"

    .line 192
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 196
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 192
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    return-void

    .line 200
    :cond_0
    const/16 v18, 0x1ff

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, "subdir":Ljava/lang/String;
    if-eqz v15, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 205
    :cond_2
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    const v19, 0x7f0e0933

    .line 205
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 207
    const v19, 0x1080027

    .line 205
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 208
    const v19, 0x7f0e0283

    .line 205
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 209
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 205
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 211
    return-void

    .line 213
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "/data/misc/wapi_certificate/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 214
    .local v14, "stringDestDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v5, "destDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 216
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    const v19, 0x7f0e0933

    .line 216
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 218
    const v19, 0x1080027

    .line 216
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 219
    const v19, 0x7f0e0284

    .line 216
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 220
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 216
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 222
    return-void

    .line 225
    :cond_4
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    .line 230
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    const v19, 0x7f0e0933

    .line 230
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 232
    const v19, 0x1080027

    .line 230
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 233
    const v19, 0x7f0e0285

    .line 230
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 234
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 230
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 236
    return-void

    .line 226
    :catch_0
    move-exception v6

    .line 227
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mASCertEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "asCert":Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 241
    :cond_6
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    const v19, 0x7f0e0933

    .line 241
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 243
    const v19, 0x1080027

    .line 241
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 244
    const v19, 0x7f0e0286

    .line 241
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 245
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 241
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 248
    return-void

    .line 251
    :cond_7
    const-string/jumbo v18, "/system/wifi/sdcard"

    sput-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    .line 253
    const/4 v11, 0x0

    .local v11, "ivolumes":I
    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 254
    new-instance v12, Ljava/io/File;

    aget-object v18, v17, v11

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v12, "path":Ljava/io/File;
    const-string/jumbo v18, "adarsh"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Trying to create file at - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":: isRemovable="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v17, v11

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 256
    const-string/jumbo v20, ", getDescription="

    .line 255
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 256
    aget-object v20, v17, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 255
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 256
    const-string/jumbo v20, ", isEmulated="

    .line 255
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 257
    aget-object v20, v17, v11

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v20

    .line 255
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 257
    const-string/jumbo v20, ", isPrimary="

    .line 255
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 257
    aget-object v20, v17, v11

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v20

    .line 255
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    aget-object v18, v17, v11

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v18

    if-eqz v18, :cond_8

    aget-object v18, v17, v11

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 260
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    .line 262
    :cond_8
    aget-object v18, v17, v11

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 263
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    .line 253
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 267
    .end local v12    # "path":Ljava/io/File;
    :cond_a
    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    sput-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 268
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "default_sdcard_path: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "asCert file:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    .line 271
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "certificate_path: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v7, Ljava/io/File;

    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v7, "fileASCert":Ljava/io/File;
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "fileASCert.exists(): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_b

    .line 276
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Certificate path: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " does not exist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Hence trying with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    sput-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 279
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    .line 280
    new-instance v7, Ljava/io/File;

    .end local v7    # "fileASCert":Ljava/io/File;
    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .restart local v7    # "fileASCert":Ljava/io/File;
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "fileASCert.exists(): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_b

    .line 284
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Secondary certificate path: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " does not exist."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Hence trying with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    sput-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    .line 287
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    .line 288
    new-instance v7, Ljava/io/File;

    .end local v7    # "fileASCert":Ljava/io/File;
    sget-object v18, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v7    # "fileASCert":Ljava/io/File;
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "fileASCert.exists(): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_b

    .line 292
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "wifi certificate path: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " does not exist."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string/jumbo v18, "WapiCertMgmtDialog"

    const-string/jumbo v19, "Hence ABORTING!!!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    const v19, 0x7f0e0933

    .line 294
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 296
    const v19, 0x1080027

    .line 294
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 297
    const v19, 0x7f0e0287

    .line 294
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 298
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 294
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 300
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 301
    return-void

    .line 307
    :cond_b
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "certificate is installing from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->isAsCertificate(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 310
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    const v19, 0x7f0e0933

    .line 310
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 312
    const v19, 0x1080027

    .line 310
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 313
    const v19, 0x7f0e0288

    .line 310
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 314
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 310
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 316
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 317
    return-void

    .line 319
    :cond_c
    const-string/jumbo v18, "WapiCertMgmtDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "handleInstall Create AS Cert: = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v8, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "as.cer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v8, "fileDestAS":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 327
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 328
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 329
    return-void

    .line 323
    :catch_1
    move-exception v6

    .line 324
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 332
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 333
    return-void

    .line 336
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUserCertEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v16

    .line 337
    .local v16, "userCert":Ljava/lang/String;
    if-eqz v16, :cond_f

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 338
    :cond_f
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    const v19, 0x7f0e0933

    .line 338
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 340
    const v19, 0x1080027

    .line 338
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 341
    const v19, 0x7f0e028a

    .line 338
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 342
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 338
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 344
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 345
    return-void

    .line 347
    :cond_10
    new-instance v10, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v10, "fileUserCert":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_11

    .line 349
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    const v19, 0x7f0e0933

    .line 349
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 351
    const v19, 0x1080027

    .line 349
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 352
    const v19, 0x7f0e028b

    .line 349
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 353
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 349
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 355
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 356
    return-void

    .line 358
    :cond_11
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->isUserCertificate(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_12

    .line 359
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    const v19, 0x7f0e0933

    .line 359
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 361
    const v19, 0x1080027

    .line 359
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 362
    const v19, 0x7f0e0289

    .line 359
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 363
    const v19, 0x104000a

    const/16 v20, 0x0

    .line 359
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 365
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 366
    return-void

    .line 368
    :cond_12
    new-instance v9, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "user.cer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v9, "fileDestUser":Ljava/io/File;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 374
    :goto_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 375
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_14

    .line 376
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 377
    return-void

    .line 371
    :catch_2
    move-exception v6

    .line 372
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 380
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 381
    return-void

    .line 384
    :cond_14
    const/16 v18, 0x1c7

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v14, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 385
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "user.cer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x124

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-static/range {v18 .. v21}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 386
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "as.cer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x124

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-static/range {v18 .. v21}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;->refreashAdvance()V

    .line 180
    return-void
.end method

.method private handleUninstall()V
    .locals 2

    .prologue
    .line 533
    const-string/jumbo v0, "WapiCertMgmtDialog"

    const-string/jumbo v1, "handleUninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;

    invoke-interface {v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;->refreashAdvance()V

    .line 532
    :cond_1
    return-void
.end method

.method private isAsCertificate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "ascert"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 447
    const-string/jumbo v2, "BEGIN CERTIFICATE"

    .line 448
    .local v2, "stringCertBegin":Ljava/lang/String;
    const-string/jumbo v3, "END CERTIFICATE"

    .line 449
    .local v3, "stringCertEnd":Ljava/lang/String;
    const-string/jumbo v4, "BEGIN EC PRIVATE KEY"

    .line 450
    .local v4, "stringECBegin":Ljava/lang/String;
    const-string/jumbo v5, "END EC PRIVATE KEY"

    .line 451
    .local v5, "stringECEnd":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "as":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eq v8, v6, :cond_0

    .line 454
    return v7

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 458
    return v7

    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eq v8, v6, :cond_1

    .line 462
    return v7

    .line 464
    :catch_1
    move-exception v1

    .line 465
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 466
    return v7

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    if-eqz v6, :cond_2

    .line 470
    return v7

    .line 472
    :catch_2
    move-exception v1

    .line 473
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 474
    return v7

    .line 477
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-virtual {p0, v5, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    if-eqz v6, :cond_3

    .line 478
    return v7

    .line 480
    :catch_3
    move-exception v1

    .line 481
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 482
    return v7

    .line 484
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return v8
.end method

.method private isUserCertificate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "usercert"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 488
    const-string/jumbo v1, "BEGIN CERTIFICATE"

    .line 489
    .local v1, "stringCertBegin":Ljava/lang/String;
    const-string/jumbo v2, "END CERTIFICATE"

    .line 490
    .local v2, "stringCertEnd":Ljava/lang/String;
    const-string/jumbo v3, "BEGIN EC PRIVATE KEY"

    .line 491
    .local v3, "stringECBegin":Ljava/lang/String;
    const-string/jumbo v4, "END EC PRIVATE KEY"

    .line 492
    .local v4, "stringECEnd":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    .local v5, "user":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v1, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eq v8, v6, :cond_0

    .line 495
    return v7

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 499
    return v7

    .line 502
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eq v8, v6, :cond_1

    .line 503
    return v7

    .line 505
    :catch_1
    move-exception v0

    .line 506
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 507
    return v7

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {p0, v3, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    if-eq v8, v6, :cond_2

    .line 511
    return v7

    .line 513
    :catch_2
    move-exception v0

    .line 514
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 515
    return v7

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    if-eq v8, v6, :cond_3

    .line 519
    return v7

    .line 521
    :catch_3
    move-exception v0

    .line 522
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 523
    return v7

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return v8
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
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setInverseBackgroundForced(Z)V

    .line 112
    iget v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    if-nez v3, :cond_1

    .line 113
    const v3, 0x7f04021d

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setLayout(I)V

    .line 114
    const v2, 0x7f0e027b

    .line 115
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mInstallButtonPos:I

    .line 121
    :cond_0
    :goto_0
    const v0, 0x7f0e027d

    .line 122
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCancelButtonPos:I

    .line 124
    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setButtons(III)V

    .line 105
    return-void

    .line 116
    :cond_1
    iget v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    if-ne v3, v4, :cond_0

    .line 117
    const v3, 0x7f04021e

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setLayout(I)V

    .line 118
    const v1, 0x7f0e027c

    .line 119
    const/4 v3, -0x3

    iput v3, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallButtonPos:I

    goto :goto_0
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    if-nez v0, :cond_1

    .line 135
    const v0, 0x7f1103f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirText:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f1103f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    .line 138
    const v0, 0x7f1103f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mASCertText:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f1103f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mASCertEdit:Landroid/widget/EditText;

    .line 141
    const v0, 0x7f1103f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUserCertText:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f1103f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUserCertEdit:Landroid/widget/EditText;

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    const v0, 0x7f1103f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirText:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f1103fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setDeletDirSpinnerAdapter()V

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
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    :cond_0
    if-lez p3, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 164
    :cond_1
    if-lez p2, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    :cond_2
    return-void
.end method

.method private setDeletDirSpinnerAdapter()V
    .locals 9

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 545
    .local v4, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v1, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/data/misc/wapi_certificate"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v3, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 552
    return-void

    .line 556
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 557
    .local v2, "certificateList":[Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_1

    .line 558
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 561
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 563
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 562
    const v8, 0x1090008

    .line 561
    invoke-direct {v0, v4, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 564
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v7, 0x1090009

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 565
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2    # "certificateList":[Ljava/io/File;
    .end local v6    # "i":I
    :goto_1
    return-void

    .line 567
    :catch_0
    move-exception v5

    .line 568
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setLayout(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->onReferenceViews(Landroid/view/View;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 170
    const-string/jumbo v0, "WapiCertMgmtDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick which "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mInstallButtonPos:I

    if-ne p2, v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->handleInstall()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mUninstallButtonPos:I

    if-ne p2, v0, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->handleUninstall()V

    goto :goto_0

    .line 175
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCancelButtonPos:I

    if-ne p2, v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->handleCancle()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 621
    const-string/jumbo v0, "WapiCertMgmtDialog"

    const-string/jumbo v1, "onClick View "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->onLayout()V

    .line 103
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 629
    const-string/jumbo v0, "WapiCertMgmtDialog"

    const-string/jumbo v1, "onItemSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getDeletDirFromSpinner()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->handleDeletDirChange(I)V

    .line 628
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 625
    const-string/jumbo v0, "WapiCertMgmtDialog"

    const-string/jumbo v1, "onNothingSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
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
    .line 436
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 437
    .local v1, "reader":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x800

    invoke-direct {v2, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 438
    .local v2, "reader2":Ljava/io/BufferedReader;
    const-string/jumbo v3, ""

    .line 439
    .local v3, "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 441
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

    .line 442
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 443
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
    iput p1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mMode:I

    .line 150
    return-void
.end method

.method public setRefreshAdvance(Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;)V
    .locals 0
    .param p1, "refresh"    # Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mRefreshAdvance:Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;

    .line 91
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 642
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 637
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 638
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->mCustomTitle:Ljava/lang/CharSequence;

    .line 636
    return-void
.end method
