.class public final Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfo$1;,
        Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final NXP_NFC_EXT_META_DATA:Ljava/lang/String; = "com.nxp.nfc.extensions"

.field static final POWER_STATE_BATTERY_OFF:I = 0x4

.field static final POWER_STATE_SWITCH_OFF:I = 0x2

.field static final POWER_STATE_SWITCH_ON:I = 0x1

.field static final SECURE_ELEMENT_ESE:Ljava/lang/String; = "eSE"

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0x1

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0x2

.field public static final SECURE_ELEMENT_ROUTE_UICC2:I = 0x4

.field static final SECURE_ELEMENT_UICC:Ljava/lang/String; = "UICC"

.field static final SECURE_ELEMENT_UICC2:Ljava/lang/String; = "UICC2"

.field static final TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field public final mBanner:Landroid/graphics/drawable/Drawable;

.field final mBannerResourceId:I

.field final mDescription:Ljava/lang/String;

.field final mDynamicAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

.field final mModifiable:Z

.field final mNfcid2CategoryToGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation
.end field

.field final mNfcid2Groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation
.end field

.field final mNfcid2s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mOnHost:Z

.field final mRequiresDeviceUnlock:Z

.field final mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

.field final mService:Landroid/content/pm/ResolveInfo;

.field mServiceState:I

.field final mSettingsActivityName:Ljava/lang/String;

.field final mStaticAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 889
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    .line 888
    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 32
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 233
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    .line 234
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    .line 235
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v26, v0

    .line 236
    .local v26, "si":Landroid/content/pm/ServiceInfo;
    const/16 v19, 0x0

    .line 237
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x0

    .line 239
    .local v11, "extParser":Landroid/content/res/XmlResourceParser;
    if-eqz p3, :cond_1

    .line 240
    :try_start_0
    const-string/jumbo v29, "android.nfc.cardemulation.host_apdu_service"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 241
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v19, :cond_3

    .line 242
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v30, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .end local v11    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local v19    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v9

    .line 429
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unable to create context for: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v29

    .line 431
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 430
    :cond_0
    throw v29

    .line 246
    .restart local v11    # "extParser":Landroid/content/res/XmlResourceParser;
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    const-string/jumbo v29, "android.nfc.cardemulation.off_host_apdu_service"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 247
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v19, :cond_2

    .line 248
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v30, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 253
    :cond_2
    const-string/jumbo v29, "com.nxp.nfc.extensions"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 254
    .local v11, "extParser":Landroid/content/res/XmlResourceParser;
    if-nez v11, :cond_3

    .line 255
    const-string/jumbo v29, "ApduServiceInfo"

    const-string/jumbo v30, "No com.nxp.nfc.extensions meta-data"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v11    # "extParser":Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    .line 261
    .local v10, "eventType":I
    :goto_0
    const/16 v29, 0x2

    move/from16 v0, v29

    if-eq v10, v0, :cond_4

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_4

    .line 262
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    goto :goto_0

    .line 265
    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 266
    .local v28, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_5

    const-string/jumbo v29, "host-apdu-service"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 269
    :cond_5
    if-nez p3, :cond_6

    const-string/jumbo v29, "offhost-apdu-service"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 274
    :cond_6
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v23

    .line 275
    .local v23, "res":Landroid/content/res/Resources;
    invoke-static/range {v19 .. v19}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 276
    .local v5, "attrs":Landroid/util/AttributeSet;
    if-eqz p3, :cond_d

    .line 278
    sget-object v29, Lcom/android/internal/R$styleable;->HostApduService:[I

    .line 277
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 279
    .local v24, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 281
    const/16 v29, 0x0

    .line 280
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 283
    const/16 v29, 0x2

    .line 284
    const/16 v30, 0x0

    .line 282
    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 286
    const/16 v29, 0x3

    const/16 v30, -0x1

    .line 285
    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 288
    const/16 v29, 0x1

    .line 287
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 289
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 304
    :goto_1
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    .line 305
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 306
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 307
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    .line 308
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    .line 309
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 311
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 312
    .local v8, "depth":I
    const/4 v6, 0x0

    .line 313
    .local v6, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    const/4 v7, 0x0

    .line 316
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_7
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v8, :cond_21

    .line 317
    :cond_8
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_21

    .line 318
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 319
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_f

    const-string/jumbo v29, "aid-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 320
    if-nez v6, :cond_f

    .line 322
    sget-object v29, Lcom/android/internal/R$styleable;->AidGroup:[I

    .line 321
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 325
    .local v13, "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v29, 0x1

    .line 324
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 327
    .local v14, "groupCategory":Ljava/lang/String;
    const/16 v29, 0x0

    .line 326
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 328
    .local v15, "groupDescription":Ljava/lang/String;
    const-string/jumbo v29, "payment"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 329
    const-string/jumbo v14, "other"

    .line 331
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/AidGroup;

    .line 332
    .local v6, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v6, :cond_e

    .line 333
    const-string/jumbo v29, "other"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 334
    const-string/jumbo v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Not allowing multiple aid-groups in the "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 335
    const-string/jumbo v31, " category"

    .line 334
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v6, 0x0

    .line 341
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_a
    :goto_3
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 267
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "depth":I
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v14    # "groupCategory":Ljava/lang/String;
    .end local v15    # "groupDescription":Ljava/lang/String;
    .end local v23    # "res":Landroid/content/res/Resources;
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    .line 268
    const-string/jumbo v30, "Meta-data does not start with <host-apdu-service> tag"

    .line 267
    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 270
    :cond_c
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    .line 271
    const-string/jumbo v30, "Meta-data does not start with <offhost-apdu-service> tag"

    .line 270
    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 292
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v23    # "res":Landroid/content/res/Resources;
    :cond_d
    sget-object v29, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    .line 291
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 293
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 295
    const/16 v29, 0x0

    .line 294
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 296
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 298
    const/16 v29, 0x2

    const/16 v30, -0x1

    .line 297
    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 300
    const/16 v29, 0x1

    .line 299
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 301
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 339
    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v8    # "depth":I
    .restart local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .restart local v14    # "groupCategory":Ljava/lang/String;
    .restart local v15    # "groupDescription":Ljava/lang/String;
    :cond_e
    new-instance v6, Landroid/nfc/cardemulation/AidGroup;

    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-direct {v6, v14, v15}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_3

    .line 342
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v14    # "groupCategory":Ljava/lang/String;
    .end local v15    # "groupDescription":Ljava/lang/String;
    :cond_f
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_12

    const-string/jumbo v29, "aid-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 343
    if-eqz v6, :cond_12

    .line 344
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_11

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_10

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_10
    :goto_4
    const/4 v6, 0x0

    .local v6, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto/16 :goto_2

    .line 349
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_11
    const-string/jumbo v29, "ApduServiceInfo"

    const-string/jumbo v30, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 352
    :cond_12
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_15

    const-string/jumbo v29, "aid-filter"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 353
    if-eqz v6, :cond_15

    .line 355
    sget-object v29, Lcom/android/internal/R$styleable;->AidFilter:[I

    .line 354
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 356
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "aid":Ljava/lang/String;
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 361
    :cond_13
    const-string/jumbo v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 359
    :cond_14
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 364
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_15
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_18

    .line 365
    const-string/jumbo v29, "aid-prefix-filter"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 364
    if-eqz v29, :cond_18

    .line 365
    if-eqz v6, :cond_18

    .line 367
    sget-object v29, Lcom/android/internal/R$styleable;->AidFilter:[I

    .line 366
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 368
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 371
    .restart local v4    # "aid":Ljava/lang/String;
    const-string/jumbo v29, "*"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_16

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 375
    :cond_16
    const-string/jumbo v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 373
    :cond_17
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 378
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_18
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_1c

    const-string/jumbo v29, "nfcid2-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 379
    if-nez v7, :cond_1c

    .line 381
    sget-object v29, Lcom/android/internal/R$styleable;->AidGroup:[I

    .line 380
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 384
    .restart local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    .line 383
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 386
    .restart local v15    # "groupDescription":Ljava/lang/String;
    const/16 v29, 0x1

    .line 385
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 387
    .restart local v14    # "groupCategory":Ljava/lang/String;
    const-string/jumbo v29, "payment"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_19

    .line 388
    const-string/jumbo v14, "other"

    .line 390
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .line 391
    .local v7, "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    if-eqz v7, :cond_1b

    .line 392
    const-string/jumbo v29, "other"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1a

    .line 393
    const-string/jumbo v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Not allowing multiple nfcid2-groups in the "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 394
    const-string/jumbo v31, " category"

    .line 393
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v7, 0x0

    .line 400
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_1a
    :goto_7
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 398
    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_1b
    new-instance v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    invoke-direct {v7, v14, v15}, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    goto :goto_7

    .line 401
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v14    # "groupCategory":Ljava/lang/String;
    .end local v15    # "groupDescription":Ljava/lang/String;
    :cond_1c
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_1f

    const-string/jumbo v29, "nfcid2-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 402
    if-eqz v7, :cond_1f

    .line 403
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_1e

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1d

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_1d
    :goto_8
    const/4 v7, 0x0

    .line 402
    .local v7, "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    goto/16 :goto_2

    .line 409
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_1e
    const-string/jumbo v29, "ApduServiceInfo"

    const-string/jumbo v30, "Not adding <nfcid2-group> with empty or invalid NFCID2s"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 412
    :cond_1f
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_7

    const-string/jumbo v29, "nfcid2-filter"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 413
    if-eqz v7, :cond_7

    .line 414
    const-string/jumbo v29, "name"

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 415
    .local v16, "nfcid2":Ljava/lang/String;
    const-string/jumbo v29, "syscode"

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 416
    .local v27, "syscode":Ljava/lang/String;
    const-string/jumbo v29, "optparam"

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    .line 418
    .local v18, "optparam":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_20

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-nez v29, :cond_20

    .line 419
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 424
    :cond_20
    const-string/jumbo v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 431
    .end local v16    # "nfcid2":Ljava/lang/String;
    .end local v18    # "optparam":Ljava/lang/String;
    .end local v27    # "syscode":Ljava/lang/String;
    :cond_21
    if-eqz v19, :cond_22

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 434
    :cond_22
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 436
    if-eqz v11, :cond_33

    .line 439
    :try_start_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    .line 440
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 441
    const/16 v25, 0x0

    .line 442
    .local v25, "seName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 443
    .local v21, "powerState":I
    const/4 v12, 0x0

    .line 444
    .local v12, "felicaId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 446
    .local v17, "optParam":Ljava/lang/String;
    :goto_9
    const/16 v29, 0x2

    move/from16 v0, v29

    if-eq v10, v0, :cond_23

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_23

    .line 447
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    goto :goto_9

    .line 449
    :cond_23
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 450
    const-string/jumbo v29, "extensions"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_24

    .line 451
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    .line 452
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Meta-data does not start with <extensions> tag "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 451
    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 503
    .end local v12    # "felicaId":Ljava/lang/String;
    .end local v17    # "optParam":Ljava/lang/String;
    .end local v21    # "powerState":I
    .end local v25    # "seName":Ljava/lang/String;
    :catchall_1
    move-exception v29

    .line 504
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 503
    throw v29

    .line 454
    .restart local v21    # "powerState":I
    :cond_24
    :goto_a
    :try_start_4
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_25

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v8, :cond_2e

    .line 455
    :cond_25
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_2e

    .line 456
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 458
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_27

    const-string/jumbo v29, "se-id"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_27

    .line 460
    const-string/jumbo v29, "name"

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 461
    .local v25, "seName":Ljava/lang/String;
    if-eqz v25, :cond_26

    const-string/jumbo v29, "eSE"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_24

    const-string/jumbo v29, "UICC"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_24

    .line 462
    const-string/jumbo v29, "UICC2"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_24

    .line 463
    :cond_26
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unsupported se name: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 465
    .end local v25    # "seName":Ljava/lang/String;
    :cond_27
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_2b

    const-string/jumbo v29, "se-power-state"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2b

    .line 467
    const-string/jumbo v29, "name"

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 468
    .local v20, "powerName":Ljava/lang/String;
    const-string/jumbo v29, "value"

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "true"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_28

    const/16 v22, 0x1

    .line 469
    .local v22, "powerValue":Z
    :goto_b
    const-string/jumbo v29, "SwitchOn"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_29

    if-eqz v22, :cond_29

    .line 470
    or-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    .line 468
    .end local v22    # "powerValue":Z
    :cond_28
    const/16 v22, 0x0

    .restart local v22    # "powerValue":Z
    goto :goto_b

    .line 471
    :cond_29
    const-string/jumbo v29, "SwitchOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2a

    if-eqz v22, :cond_2a

    .line 472
    or-int/lit8 v21, v21, 0x2

    goto/16 :goto_a

    .line 473
    :cond_2a
    const-string/jumbo v29, "BatteryOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_24

    if-eqz v22, :cond_24

    .line 474
    or-int/lit8 v21, v21, 0x4

    goto/16 :goto_a

    .line 476
    .end local v20    # "powerName":Ljava/lang/String;
    .end local v22    # "powerValue":Z
    :cond_2b
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_24

    const-string/jumbo v29, "felica-id"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 478
    const-string/jumbo v29, "name"

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 479
    .local v12, "felicaId":Ljava/lang/String;
    if-eqz v12, :cond_2c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0xa

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2d

    .line 480
    :cond_2c
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unsupported felicaId: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 483
    :cond_2d
    const-string/jumbo v29, "opt-params"

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 484
    .local v17, "optParam":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_24

    .line 485
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unsupported opt-params: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 489
    .end local v12    # "felicaId":Ljava/lang/String;
    .end local v17    # "optParam":Ljava/lang/String;
    :cond_2e
    if-eqz v25, :cond_31

    .line 490
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const-string/jumbo v29, "eSE"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2f

    const/16 v29, 0x1

    :goto_c
    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 491
    const-string/jumbo v29, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_d
    if-eqz v12, :cond_32

    .line 498
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    .line 499
    const-string/jumbo v29, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 504
    :goto_e
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 231
    .end local v21    # "powerState":I
    :goto_f
    return-void

    .line 490
    .restart local v21    # "powerState":I
    :cond_2f
    :try_start_5
    const-string/jumbo v29, "UICC"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_30

    const/16 v29, 0x2

    goto :goto_c

    :cond_30
    const/16 v29, 0x4

    goto :goto_c

    .line 493
    :cond_31
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v30, -0x1

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 494
    const-string/jumbo v29, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 501
    :cond_32
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_e

    .line 507
    .end local v21    # "powerState":I
    :cond_33
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v30, -0x1

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 508
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    goto :goto_f
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "settingsActivityName"    # Ljava/lang/String;
    .param p10, "seExtension"    # Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .param p12, "banner"    # Landroid/graphics/drawable/Drawable;
    .param p13, "modifiable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p11, "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    if-eqz p12, :cond_0

    .line 192
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 196
    :goto_0
    move/from16 v0, p13

    iput-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    .line 197
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 198
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 199
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    .line 200
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    .line 201
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 202
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 203
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    .line 204
    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 205
    iput-boolean p6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 206
    const/4 v5, 0x2

    iput v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    .line 207
    if-eqz p4, :cond_1

    .line 208
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 209
    .local v1, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v6, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 194
    .end local v1    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v2    # "aidGroup$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 212
    :cond_1
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "aidGroup$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 213
    .restart local v1    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iget-object v6, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 215
    .end local v1    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_2
    if-eqz p11, :cond_3

    .line 216
    invoke-interface/range {p11 .. p11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "nfcid2Group$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .line 217
    .local v3, "nfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    iget-object v6, v3, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 223
    .end local v3    # "nfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .end local v4    # "nfcid2Group$iterator":Ljava/util/Iterator;
    :cond_3
    iput p7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 224
    iput p8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 225
    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 226
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 227
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    .line 190
    return-void
.end method

.method private getAidCacheSizeForCategory(Ljava/lang/String;)I
    .locals 9
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 572
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v5, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    const/4 v4, 0x0

    .line 575
    .local v4, "aidCacheSize":I
    const/4 v6, 0x0

    .line 576
    .local v6, "aidLen":I
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getStaticAidGroups()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 577
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroups()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 578
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 579
    :cond_0
    return v4

    .line 581
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "aidCache$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 582
    .local v2, "aidCache":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 585
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v7

    .line 586
    .local v7, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_2

    .line 589
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 590
    .local v0, "aid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 591
    const-string/jumbo v8, "*"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 592
    add-int/lit8 v6, v6, -0x1

    .line 594
    :cond_3
    shr-int/lit8 v8, v6, 0x1

    add-int/2addr v4, v8

    goto :goto_0

    .line 597
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "aidCache":Landroid/nfc/cardemulation/AidGroup;
    .end local v7    # "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return v4
.end method

.method private getTotalAidNumCategory(Ljava/lang/String;)I
    .locals 8
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 617
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v4, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    const/4 v5, 0x0

    .line 620
    .local v5, "aidTotalNum":I
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getStaticAidGroups()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 621
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroups()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 622
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 623
    :cond_0
    return v5

    .line 625
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "aidCache$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 626
    .local v2, "aidCache":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 629
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v6

    .line 630
    .local v6, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 633
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 634
    .local v0, "aid":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "aidCache":Landroid/nfc/cardemulation/AidGroup;
    .end local v6    # "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return v5
.end method

.method static isValidNfcid2(Ljava/lang/String;)Z
    .locals 5
    .param p0, "nfcid2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 802
    if-nez p0, :cond_0

    .line 803
    return v4

    .line 805
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 806
    .local v0, "nfcid2Length":I
    if-eqz v0, :cond_1

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 807
    :cond_1
    const-string/jumbo v1, "ApduServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not correctly formatted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return v4

    .line 811
    :cond_2
    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    .line 812
    const-string/jumbo v1, "ApduServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NFCID2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not 8 bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return v4

    .line 815
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method static serviceStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1038
    packed-switch p0, :pswitch_data_0

    .line 1048
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 1040
    :pswitch_0
    const-string/jumbo v0, "DISABLED"

    return-object v0

    .line 1042
    :pswitch_1
    const-string/jumbo v0, "ENABLED"

    return-object v0

    .line 1044
    :pswitch_2
    const-string/jumbo v0, "ENABLING"

    return-object v0

    .line 1046
    :pswitch_3
    const-string/jumbo v0, "DISABLING"

    return-object v0

    .line 1038
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1053
    const-string/jumbo v5, " (Description: "

    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1053
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1053
    const-string/jumbo v5, ")"

    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v4, "    Static AID groups:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 1056
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "        Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    iget-object v4, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1058
    .local v0, "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    const-string/jumbo v4, "    Dynamic AID groups:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 1063
    .restart local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "        Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    iget-object v4, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "aid$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1065
    .restart local v0    # "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1068
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    Settings Activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    Routing Destination: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "host"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v4, "other"

    invoke-virtual {p0, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    Service State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    invoke-static {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->serviceStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    :cond_4
    return-void

    .line 1069
    :cond_5
    const-string/jumbo v4, "secure element"

    goto :goto_2
.end method

.method public enableService(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "flagEnable"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 961
    const-string/jumbo v0, "other"

    if-eq p1, v0, :cond_0

    .line 962
    return-void

    .line 964
    :cond_0
    const-string/jumbo v0, "ApduServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setServiceState:Description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":InternalState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":flagEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v4, :cond_2

    if-eqz p2, :cond_2

    .line 970
    :cond_1
    return-void

    .line 966
    :cond_2
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    .line 967
    :cond_3
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v6, :cond_4

    if-eqz p2, :cond_1

    .line 968
    :cond_4
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v5, :cond_5

    if-nez p2, :cond_1

    .line 972
    :cond_5
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v4, :cond_7

    if-nez p2, :cond_7

    .line 973
    iput v6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    .line 960
    :cond_6
    :goto_0
    return-void

    .line 975
    :cond_7
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    .line 976
    iput v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    goto :goto_0

    .line 978
    :cond_8
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v6, :cond_9

    if-eqz p2, :cond_9

    .line 979
    iput v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    goto :goto_0

    .line 981
    :cond_9
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v5, :cond_6

    if-nez p2, :cond_6

    .line 982
    iput v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 836
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 837
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 838
    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 840
    .local v0, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public geTotalAidNum(Ljava/lang/String;)I
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "aidTotalNum":I
    const-string/jumbo v1, "other"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "other"

    invoke-virtual {p0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    const-string/jumbo v1, "other"

    invoke-direct {p0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getTotalAidNumCategory(Ljava/lang/String;)I

    move-result v0

    .line 613
    return v0

    .line 610
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getAidCacheSize(Ljava/lang/String;)I
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "aidSize":I
    const-string/jumbo v1, "other"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "other"

    invoke-virtual {p0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    const-string/jumbo v1, "other"

    invoke-direct {p0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidCacheSizeForCategory(Ljava/lang/String;)I

    move-result v0

    .line 568
    return v0

    .line 565
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getAidGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 677
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 679
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_0
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 683
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 686
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_2
    return-object v2
.end method

.method public getAids()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 548
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 550
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    return-object v0
.end method

.method public getBannerId()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    return v0
.end method

.method public getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v2

    .line 695
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 696
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    return-object v3

    .line 700
    .end local v0    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 530
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 531
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 530
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 655
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method public getDynamicAidGroups()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 717
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 719
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_0
    return-object v2
.end method

.method public getModifiable()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    return v0
.end method

.method public getNfcid2Groups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNfcid2s()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrefixAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v4, "prefixAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 642
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v5, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 643
    .local v0, "aid":Ljava/lang/String;
    const-string/jumbo v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 644
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_2
    return-object v4
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    return-object v0
.end method

.method public getServiceState(Ljava/lang/String;)I
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 987
    const-string/jumbo v0, "other"

    if-eq p1, v0, :cond_0

    .line 988
    const/4 v0, 0x1

    return v0

    .line 991
    :cond_0
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    return v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticAidGroups()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 708
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 710
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_0
    return-object v2
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    return v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 731
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOnHost()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public isServiceEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 939
    const-string/jumbo v0, "other"

    if-eq p1, v0, :cond_0

    .line 940
    return v2

    .line 943
    :cond_0
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 944
    :cond_1
    return v2

    .line 946
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 765
    :try_start_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/16 v2, 0x80

    .line 764
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v6, 0x0

    .line 779
    :try_start_0
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 780
    .local v3, "res":Landroid/content/res/Resources;
    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 781
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 785
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 783
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "banner":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 789
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 790
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "ApduServiceInfo"

    const-string/jumbo v5, "Could not load banner."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-object v6

    .line 786
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 787
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "ApduServiceInfo"

    const-string/jumbo v5, "Could not load banner."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-object v6
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 772
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 759
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public removeDynamicAidGroupForCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 659
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresUnlock()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V
    .locals 2
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .prologue
    .line 755
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    return-void
.end method

.method public setServiceState(Ljava/lang/String;I)I
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 995
    const-string/jumbo v0, "other"

    if-eq p1, v0, :cond_0

    .line 996
    const/4 v0, 0x1

    return v0

    .line 999
    :cond_0
    iput p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    .line 1000
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ApduService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 821
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    const-string/jumbo v3, ", description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string/jumbo v3, ", Static AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 825
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 827
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    const-string/jumbo v3, ", Dynamic AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 829
    .restart local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 831
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateServiceCommitStatus(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "commitStatus"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1011
    const-string/jumbo v0, "other"

    if-eq p1, v0, :cond_0

    .line 1012
    return-void

    .line 1014
    :cond_0
    const-string/jumbo v0, "ApduServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateServiceCommitStatus:Description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":InternalState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":commitStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    if-eqz p2, :cond_3

    .line 1018
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v6, :cond_2

    .line 1019
    iput v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    .line 1010
    :cond_1
    :goto_0
    return-void

    .line 1021
    :cond_2
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v5, :cond_1

    .line 1022
    iput v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    goto :goto_0

    .line 1028
    :cond_3
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v6, :cond_4

    .line 1029
    iput v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    goto :goto_0

    .line 1031
    :cond_4
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    if-ne v0, v5, :cond_1

    .line 1032
    iput v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 856
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 857
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 858
    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 861
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 863
    :cond_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 865
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 867
    :cond_1
    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    invoke-virtual {v1, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 873
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 875
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 878
    :cond_2
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 879
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 880
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 884
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mServiceState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    return-void

    :cond_3
    move v1, v3

    .line 858
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 867
    goto :goto_1

    .line 882
    :cond_5
    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_6
    move v2, v3

    .line 884
    goto :goto_3
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 513
    const-string/jumbo v3, "description"

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    const-string/jumbo v2, ""

    .line 515
    .local v2, "modifiable":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    if-eqz v3, :cond_0

    .line 516
    const-string/jumbo v2, "true"

    .line 520
    :goto_0
    const-string/jumbo v3, "modifiable"

    invoke-interface {p1, v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    const-string/jumbo v3, "uid"

    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    const-string/jumbo v3, "seId"

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    iget v4, v4, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->seId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    const-string/jumbo v3, "bannerId"

    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 525
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/AidGroup;->writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 518
    .end local v0    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v2, "false"

    goto :goto_0

    .line 512
    .restart local v1    # "group$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
