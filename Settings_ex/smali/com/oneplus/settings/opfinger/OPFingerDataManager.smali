.class public Lcom/oneplus/settings/opfinger/OPFingerDataManager;
.super Ljava/lang/Object;
.source "OPFingerDataManager.java"


# static fields
.field private static OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String; = null

.field private static OEM_FINGER_LOCKSCREEN:Ljava/lang/String; = null

.field public static final OPFINGER_DATA_ROOT_PATH:Ljava/lang/String; = "/persist/lock_setting/opfinger_data.xml"

.field public static final OPFINGER_ID:Ljava/lang/String; = "id"

.field public static final OPFINGER_INDEX:Ljava/lang/String; = "index"

.field public static final OPFINGER_NAME:Ljava/lang/String; = "name"

.field public static final OPFINGER_TOGGLE_ROOT_ELEMENT:Ljava/lang/String; = "fingerprint_toggle"

.field public static final OPFINGER_TOGGLE_ROOT_PATH:Ljava/lang/String; = "/persist/lock_setting/opfinger_toggle.xml"

.field public static final OPFINGER_TOGGLE_VALUE:Ljava/lang/String; = "value"

.field public static final ROOT_DIR:Ljava/lang/String; = "/persist/lock_setting"

.field public static final ROOT_ELEMENT:Ljava/lang/String; = "fingerprint_data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "oem_finger_lockscreen"

    sput-object v0, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    .line 54
    const-string v0, "oem_finger_check_oneplus_account"

    sput-object v0, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 685
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    const/4 v1, 0x1

    .line 689
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static savedOPfingerXML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 494
    const/4 v3, 0x0

    .line 496
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/persist/lock_setting"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 498
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 500
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 502
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 506
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 508
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 515
    if-eqz v4, :cond_1

    .line 516
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v3, v4

    .line 521
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 515
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    if-eqz v3, :cond_2

    .line 516
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 517
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 518
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 520
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 509
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 510
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 515
    if-eqz v3, :cond_2

    .line 516
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 517
    :catch_3
    move-exception v1

    .line 518
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 511
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 512
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 515
    if-eqz v3, :cond_2

    .line 516
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 517
    :catch_5
    move-exception v1

    .line 518
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 514
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 515
    :goto_3
    if-eqz v3, :cond_4

    .line 516
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 519
    :cond_4
    :goto_4
    throw v5

    .line 517
    :catch_6
    move-exception v1

    .line 518
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 514
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 511
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 509
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static writeTxtFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "mm":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 131
    .local v1, "flag":Z
    const/4 v3, 0x0

    .line 133
    .local v3, "o":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v3    # "o":Ljava/io/FileOutputStream;
    .local v4, "o":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 135
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    const/4 v1, 0x1

    .line 141
    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    move-object v3, v4

    .line 145
    .end local v4    # "o":Ljava/io/FileOutputStream;
    .restart local v3    # "o":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    throw v5

    .line 141
    .end local v3    # "o":Ljava/io/FileOutputStream;
    .restart local v4    # "o":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "o":Ljava/io/FileOutputStream;
    .restart local v3    # "o":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 137
    .end local v3    # "o":Ljava/io/FileOutputStream;
    .restart local v4    # "o":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "o":Ljava/io/FileOutputStream;
    .restart local v3    # "o":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "o":Ljava/io/FileOutputStream;
    .restart local v4    # "o":Ljava/io/FileOutputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "o":Ljava/io/FileOutputStream;
    .restart local v3    # "o":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public addOPFingerId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerDataDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 170
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerRightIndex()I

    move-result v2

    .line 172
    .local v2, "index":I
    const-string v6, "data"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 173
    .local v0, "data":Lorg/w3c/dom/Element;
    const-string v6, "id"

    invoke-interface {v0, v6, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v6, "name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v6, "index"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v6, "fingerprint_data"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 183
    .local v3, "root":Lorg/w3c/dom/Element;
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 186
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v5

    .line 187
    .local v5, "tsfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v4

    .line 188
    .local v4, "transform":Ljavax/xml/transform/Transformer;
    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v6, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    new-instance v8, Ljava/io/FileOutputStream;

    const-string v9, "/persist/lock_setting/opfinger_data.xml"

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v6, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "data":Lorg/w3c/dom/Element;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "index":I
    .end local v3    # "root":Lorg/w3c/dom/Element;
    .end local v4    # "transform":Ljavax/xml/transform/Transformer;
    .end local v5    # "tsfactory":Ljavax/xml/transform/TransformerFactory;
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public addOPFingerToggle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 614
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerToggleDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 616
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 617
    .local v0, "data":Lorg/w3c/dom/Element;
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 620
    const-string v5, "fingerprint_toggle"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 622
    .local v2, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 625
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 626
    .local v4, "tsfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 627
    .local v3, "transform":Ljavax/xml/transform/Transformer;
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    new-instance v7, Ljava/io/FileOutputStream;

    const-string v8, "/persist/lock_setting/opfinger_toggle.xml"

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v0    # "data":Lorg/w3c/dom/Element;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "root":Lorg/w3c/dom/Element;
    .end local v3    # "transform":Ljavax/xml/transform/Transformer;
    .end local v4    # "tsfactory":Ljavax/xml/transform/TransformerFactory;
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public deleteOPFingerId(Ljava/lang/String;)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerDataDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 198
    .local v2, "document":Lorg/w3c/dom/Document;
    const-string v9, "fingerprint_data"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 200
    .local v6, "root":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 201
    .local v4, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 202
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 203
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 204
    .local v1, "curretnNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 205
    .local v5, "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    const-string v9, "id"

    invoke-interface {v5, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 206
    invoke-interface {v6, v1}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 202
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "curretnNode":Lorg/w3c/dom/Node;
    .end local v5    # "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    :cond_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v8

    .line 212
    .local v8, "tsfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v8}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v7

    .line 213
    .local v7, "transform":Ljavax/xml/transform/Transformer;
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v10, Ljavax/xml/transform/stream/StreamResult;

    new-instance v11, Ljava/io/FileOutputStream;

    const-string v12, "/persist/lock_setting/opfinger_data.xml"

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v9, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "childCount":I
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "i":I
    .end local v4    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    .end local v7    # "transform":Ljavax/xml/transform/Transformer;
    .end local v8    # "tsfactory":Ljavax/xml/transform/TransformerFactory;
    :goto_1
    return-void

    .line 215
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public getOPFingerCount()I
    .locals 7

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "childCount":I
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerDataDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 156
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v5, "fingerprint_data"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 158
    .local v4, "root":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 159
    .local v3, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v4    # "root":Lorg/w3c/dom/Element;
    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getOPFingerData()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, "fingers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;>;"
    const/4 v1, 0x0

    .line 335
    .local v1, "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/persist/lock_setting/opfinger_data.xml"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 340
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 341
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "UTF-8"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 342
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .local v0, "eventType":I
    move-object v2, v1

    .line 343
    .end local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .local v2, "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :goto_0
    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    .line 344
    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v1, v2

    .line 363
    .end local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move-object v2, v1

    .end local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    goto :goto_0

    :pswitch_1
    move-object v1, v2

    .line 346
    .end local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    goto :goto_1

    .line 348
    .end local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :pswitch_2
    :try_start_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 349
    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-direct {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    .end local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :try_start_2
    const-string v6, ""

    const-string v7, "id"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->setOpfingerId(I)V

    .line 352
    const-string v6, ""

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->setOpfingerName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 365
    .end local v0    # "eventType":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v6

    .line 368
    :goto_2
    return-object v3

    .line 357
    .end local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v0    # "eventType":I
    .restart local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_3
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 358
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 359
    const/4 v1, 0x0

    .end local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    goto :goto_1

    .end local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :cond_1
    move-object v1, v2

    .line 367
    .end local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    goto :goto_2

    .line 365
    .end local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    .restart local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    goto :goto_2

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOPFingerData(Ljava/io/InputStream;)Ljava/util/List;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, "fingers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;>;"
    const/4 v1, 0x0

    .line 378
    .local v1, "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 379
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "UTF-8"

    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 380
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 381
    .local v0, "eventType":I
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    .line 382
    packed-switch v0, :pswitch_data_0

    .line 402
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 384
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "fingers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .restart local v2    # "fingers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;>;"
    goto :goto_1

    .line 387
    :pswitch_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    .end local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    invoke-direct {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;-><init>()V

    .line 389
    .restart local v1    # "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    const-string v4, ""

    const-string v5, "id"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->setOpfingerId(I)V

    .line 391
    const-string v4, ""

    const-string v5, "name"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->setOpfingerName(Ljava/lang/String;)V

    goto :goto_1

    .line 396
    :pswitch_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 397
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    const/4 v1, 0x0

    goto :goto_1

    .line 404
    :cond_1
    return-object v2

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOPFingerDataDocument()Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 75
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 77
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    const-string v4, "/persist/lock_setting/opfinger_data.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 78
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->normalize()V

    .line 79
    return-object v1
.end method

.method public getOPFingerMaxIndex()I
    .locals 7

    .prologue
    .line 297
    const/4 v3, 0x0

    .line 299
    .local v3, "maxIndex":I
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/persist/lock_setting/opfinger_data.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 304
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 305
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v5, "UTF-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 306
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 307
    .local v1, "eventType":I
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 308
    packed-switch v1, :pswitch_data_0

    .line 323
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    const-string v5, ""

    const-string v6, "index"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 315
    .local v0, "currentIndex":I
    if-gt v3, v0, :cond_0

    .line 316
    move v3, v0

    goto :goto_1

    .line 325
    .end local v0    # "currentIndex":I
    .end local v1    # "eventType":I
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v5

    .line 328
    :cond_1
    return v3

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getOPFingerRightIndex()I
    .locals 9

    .prologue
    .line 251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v2, "fingerIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x5

    .line 254
    .local v5, "minIndex":I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/persist/lock_setting/opfinger_data.xml"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 259
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 260
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "UTF-8"

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 261
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 262
    .local v1, "eventType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_2

    .line 263
    packed-switch v1, :pswitch_data_0

    .line 276
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 267
    :pswitch_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 268
    const-string v7, ""

    const-string v8, "index"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 270
    .local v0, "currentIndex":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    .end local v0    # "currentIndex":I
    .end local v1    # "eventType":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v7

    .line 288
    :cond_1
    return v5

    .line 278
    .restart local v1    # "eventType":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    const/4 v7, 0x5

    if-gt v3, v7, :cond_1

    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_3

    .line 280
    if-lt v5, v3, :cond_3

    .line 281
    move v5, v3

    .line 278
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getOPFingerToggleDocument()Lorg/w3c/dom/Document;
    .locals 10

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "document":Lorg/w3c/dom/Document;
    new-instance v5, Ljava/io/File;

    const-string v6, "/persist/lock_setting/opfinger_toggle.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v5, "mFile":Ljava/io/File;
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<fingerprint_toggle>\n<oem_finger_lockscreen>0</oem_finger_lockscreen>\n<oem_finger_check_oneplus_account>0</oem_finger_check_oneplus_account>\n</fingerprint_toggle>"

    .line 90
    .local v1, "content":Ljava/lang/String;
    const/4 v4, 0x0

    .line 91
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 94
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 107
    invoke-static {v1, v5}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->writeTxtFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 111
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/persist/lock_setting/opfinger_toggle.xml"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 112
    invoke-interface {v2}, Lorg/w3c/dom/Document;->normalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    :goto_0
    return-object v2

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    :try_start_1
    invoke-static {v1, v5}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->writeTxtFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 117
    new-instance v6, Ljava/io/File;

    const-string v7, "/persist/lock_setting/opfinger_toggle.xml"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Lorg/w3c/dom/Document;->normalize()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public getToggleValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 671
    const-string v2, "0"

    .line 673
    .local v2, "toggleValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerToggleDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 674
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 675
    .local v1, "root":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 679
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "root":Lorg/w3c/dom/Element;
    :goto_0
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 676
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public hasFingersId(I)Z
    .locals 8
    .param p1, "fingerId"    # I

    .prologue
    .line 414
    const/4 v3, 0x0

    .line 415
    .local v3, "hasFingersId":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v2, "fingers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;>;"
    const/4 v1, 0x0

    .line 418
    .local v1, "finger":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/persist/lock_setting/opfinger_data.xml"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 423
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 424
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "UTF-8"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 425
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 426
    .local v0, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    .line 427
    packed-switch v0, :pswitch_data_0

    .line 441
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 431
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 432
    const-string v6, ""

    const-string v7, "id"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne p1, v6, :cond_0

    .line 434
    const/4 v3, 0x1

    goto :goto_1

    .line 443
    .end local v0    # "eventType":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v6

    .line 446
    :cond_1
    return v3

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isExternalStorageReadable()Z
    .locals 2

    .prologue
    .line 694
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    :cond_0
    const/4 v1, 0x1

    .line 699
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveOPfingerToggleXml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 577
    const/4 v3, 0x0

    .line 579
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/persist/lock_setting"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 581
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 583
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 585
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 589
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 591
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 598
    if-eqz v4, :cond_1

    .line 599
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v3, v4

    .line 604
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 598
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    if-eqz v3, :cond_2

    .line 599
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v1

    .line 601
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 600
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 601
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 603
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 592
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 593
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 598
    if-eqz v3, :cond_2

    .line 599
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 600
    :catch_3
    move-exception v1

    .line 601
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 594
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 595
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 598
    if-eqz v3, :cond_2

    .line 599
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 600
    :catch_5
    move-exception v1

    .line 601
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 597
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 598
    :goto_3
    if-eqz v3, :cond_4

    .line 599
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 602
    :cond_4
    :goto_4
    throw v5

    .line 600
    :catch_6
    move-exception v1

    .line 601
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 597
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 594
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 592
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public saxCreateFingerDataXML()Ljava/lang/String;
    .locals 10

    .prologue
    .line 450
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 452
    .local v6, "xmlWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    check-cast v2, Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 454
    .local v2, "factory":Ljavax/xml/transform/sax/SAXTransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v3

    .line 456
    .local v3, "handler":Ljavax/xml/transform/sax/TransformerHandler;
    invoke-interface {v3}, Ljavax/xml/transform/sax/TransformerHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 457
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    const-string v7, "indent"

    const-string v8, "yes"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v7, "encoding"

    const-string v8, "utf-8"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v7, "version"

    const-string v8, "1.0"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 462
    .local v4, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-interface {v3, v4}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    .line 464
    invoke-interface {v3}, Ljavax/xml/transform/sax/TransformerHandler;->startDocument()V

    .line 465
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 466
    .local v0, "attr":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 467
    const-string v7, ""

    const-string v8, ""

    const-string v9, "fingerprint_data"

    invoke-interface {v3, v7, v8, v9, v0}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 468
    const-string v7, ""

    const-string v8, ""

    const-string v9, "fingerprint_data"

    invoke-interface {v3, v7, v8, v9}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-interface {v3}, Ljavax/xml/transform/sax/TransformerHandler;->endDocument()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 483
    .end local v0    # "attr":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v2    # "factory":Ljavax/xml/transform/sax/SAXTransformerFactory;
    .end local v3    # "handler":Ljavax/xml/transform/sax/TransformerHandler;
    .end local v4    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_0
    const-string v7, "/persist/lock_setting/opfinger_data.xml"

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->savedOPfingerXML(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljavax/xml/transform/TransformerFactoryConfigurationError;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    .line 473
    .end local v1    # "e":Ljavax/xml/transform/TransformerFactoryConfigurationError;
    :catch_1
    move-exception v1

    .line 474
    .local v1, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 475
    .end local v1    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 477
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 478
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 479
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public saxCreateOPFingerToggleXML()Ljava/lang/String;
    .locals 10

    .prologue
    .line 524
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 526
    .local v6, "xmlWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    check-cast v2, Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 528
    .local v2, "factory":Ljavax/xml/transform/sax/SAXTransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v3

    .line 530
    .local v3, "handler":Ljavax/xml/transform/sax/TransformerHandler;
    invoke-interface {v3}, Ljavax/xml/transform/sax/TransformerHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 531
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    const-string v7, "indent"

    const-string v8, "yes"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v7, "encoding"

    const-string v8, "utf-8"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v7, "version"

    const-string v8, "1.0"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 536
    .local v4, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-interface {v3, v4}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    .line 538
    invoke-interface {v3}, Ljavax/xml/transform/sax/TransformerHandler;->startDocument()V

    .line 539
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 540
    .local v0, "attr":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 541
    const-string v7, ""

    const-string v8, ""

    const-string v9, "fingerprint_toggle"

    invoke-interface {v3, v7, v8, v9, v0}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 543
    const-string v7, ""

    const-string v8, ""

    sget-object v9, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-interface {v3, v7, v8, v9, v0}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 545
    const-string v7, ""

    const-string v8, ""

    sget-object v9, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-interface {v3, v7, v8, v9}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v7, ""

    const-string v8, ""

    sget-object v9, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    invoke-interface {v3, v7, v8, v9, v0}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 549
    const-string v7, ""

    const-string v8, ""

    sget-object v9, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    invoke-interface {v3, v7, v8, v9}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v7, ""

    const-string v8, ""

    const-string v9, "fingerprint_toggle"

    invoke-interface {v3, v7, v8, v9}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-interface {v3}, Ljavax/xml/transform/sax/TransformerHandler;->endDocument()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 566
    .end local v0    # "attr":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v2    # "factory":Ljavax/xml/transform/sax/SAXTransformerFactory;
    .end local v3    # "handler":Ljavax/xml/transform/sax/TransformerHandler;
    .end local v4    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_0
    const-string v7, "/persist/lock_setting/opfinger_toggle.xml"

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->saveOPfingerToggleXml(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Ljavax/xml/transform/TransformerFactoryConfigurationError;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    .line 557
    .end local v1    # "e":Ljavax/xml/transform/TransformerFactoryConfigurationError;
    :catch_1
    move-exception v1

    .line 558
    .local v1, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v1    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v1

    .line 560
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 561
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 562
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 563
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateOPFingerId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerDataDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 224
    .local v2, "document":Lorg/w3c/dom/Document;
    const-string v9, "fingerprint_data"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 226
    .local v6, "root":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 227
    .local v4, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 228
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 229
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 230
    .local v1, "curretnNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 231
    .local v5, "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    const-string v9, "id"

    invoke-interface {v5, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 232
    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1    # "curretnNode":Lorg/w3c/dom/Node;
    const-string v9, "name"

    invoke-interface {v1, v9, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v5    # "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    :cond_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v8

    .line 237
    .local v8, "tsfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v8}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v7

    .line 238
    .local v7, "transform":Ljavax/xml/transform/Transformer;
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v10, Ljavax/xml/transform/stream/StreamResult;

    new-instance v11, Ljava/io/FileOutputStream;

    const-string v12, "/persist/lock_setting/opfinger_data.xml"

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v9, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "childCount":I
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "i":I
    .end local v4    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    .end local v7    # "transform":Ljavax/xml/transform/Transformer;
    .end local v8    # "tsfactory":Ljavax/xml/transform/TransformerFactory;
    :goto_1
    return-void

    .line 240
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public updateOPFingerToggle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 642
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerToggleDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 644
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 645
    .local v1, "root":Lorg/w3c/dom/Element;
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 655
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    .line 656
    .local v3, "tsfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 657
    .local v2, "transform":Ljavax/xml/transform/Transformer;
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/persist/lock_setting/opfinger_toggle.xml"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "root":Lorg/w3c/dom/Element;
    .end local v2    # "transform":Ljavax/xml/transform/Transformer;
    .end local v3    # "tsfactory":Ljavax/xml/transform/TransformerFactory;
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v4

    goto :goto_0
.end method
