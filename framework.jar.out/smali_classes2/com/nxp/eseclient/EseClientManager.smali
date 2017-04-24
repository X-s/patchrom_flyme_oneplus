.class public final Lcom/nxp/eseclient/EseClientManager;
.super Ljava/lang/Object;
.source "EseClientManager.java"


# static fields
.field public static final JCPSERVICE:I = 0x2

.field public static final LDRSERVICE:I = 0x1

.field public static final LTSMSERVICE:I = 0x3

.field public static final NFC:I = 0x1

.field public static final SPI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EseClientManager"

.field private static mEseManager:Lcom/nxp/eseclient/EseClientManager;

.field private static sNfcService:Ljava/lang/Object;

.field private static sNxpNfcExtrasService:Ljava/lang/Object;

.field private static sNxpNfcService:Ljava/lang/Object;

.field private static sSpiService:Ljava/lang/Object;


# instance fields
.field getNxpAdapterMthd:Ljava/lang/reflect/Method;

.field nfc:Ljava/lang/Class;

.field nfcStub:Ljava/lang/Class;

.field nxpNfc:Ljava/lang/Class;

.field spi:Ljava/lang/Class;

.field spiStub:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/nxp/eseclient/EseClientManager;

    invoke-direct {v0}, Lcom/nxp/eseclient/EseClientManager;-><init>()V

    sput-object v0, Lcom/nxp/eseclient/EseClientManager;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nxp/eseclient/EseClientManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/nxp/eseclient/EseClientManager;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    return-object v0
.end method

.method private getNfcServiceInterface()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    .local v5, "obj":Ljava/lang/Object;
    const-string v7, "nfc"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 54
    .local v1, "b":Landroid/os/IBinder;
    if-nez v1, :cond_1

    move-object v5, v6

    .line 80
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 58
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_0
    const-class v6, Ljava/lang/System;

    const-string v6, "android.nfc.INfcAdapter"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->nfc:Ljava/lang/Class;

    .line 59
    iget-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->nfc:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v2

    .line 60
    .local v2, "cls":[Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_3

    .line 61
    const-string v6, "EseClientManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cls["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 63
    aget-object v6, v2, v4

    iput-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->nfcStub:Ljava/lang/Class;

    .line 60
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 66
    :cond_3
    const-string v6, "EseClientManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total number of classes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iget-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->nfcStub:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 73
    :try_start_1
    iget-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->nfcStub:Ljava/lang/Class;

    const-string v7, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 74
    .local v0, "asInterfaceMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto/16 :goto_0

    .line 67
    .end local v0    # "asInterfaceMethod":Ljava/lang/reflect/Method;
    .end local v2    # "cls":[Ljava/lang/Class;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 69
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 75
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "cls":[Ljava/lang/Class;
    .restart local v4    # "i":I
    :catch_1
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "EseClientManager"

    const-string v7, "nfc-asInterface method not found"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6
.end method

.method private getNxpNfcExtrasAdapterInterface()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, "obj":Ljava/lang/Object;
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 111
    :try_start_0
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getNxpNfcAdapterExtrasInterface"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    .local v1, "getNxpExtrasInterface":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 118
    .end local v1    # "getNxpExtrasInterface":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v2

    .line 113
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EseClientManager"

    const-string v4, "getNxpNfcAdapterExtrasInterface method not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method private getNxpNfcServiceInterface()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "obj":Ljava/lang/Object;
    sget-object v4, Lcom/nxp/eseclient/EseClientManager;->sNfcService:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 87
    const-string v4, "EseClientManager"

    const-string v5, "could not retrieve NFC service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 91
    :cond_0
    :try_start_0
    sget-object v4, Lcom/nxp/eseclient/EseClientManager;->sNfcService:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 92
    .local v2, "mthd":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 94
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getNxpNfcAdapterInterface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 95
    aget-object v4, v2, v1

    iput-object v4, p0, Lcom/nxp/eseclient/EseClientManager;->getNxpAdapterMthd:Ljava/lang/reflect/Method;

    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/nxp/eseclient/EseClientManager;->getNxpAdapterMthd:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/nxp/eseclient/EseClientManager;->sNfcService:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 103
    return-object v3

    .line 99
    .end local v1    # "i":I
    .end local v2    # "mthd":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EseClientManager"

    const-string v5, "getNxpNfcAdapterInterface method not found"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method private getSpiServiceInterface()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 124
    const/4 v5, 0x0

    .line 125
    .local v5, "obj":Ljava/lang/Object;
    const-string v7, "spi"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 126
    .local v1, "b":Landroid/os/IBinder;
    if-nez v1, :cond_1

    move-object v5, v6

    .line 152
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 130
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_0
    const-class v6, Ljava/lang/System;

    const-string v6, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->spi:Ljava/lang/Class;

    .line 131
    iget-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->spi:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v2

    .line 132
    .local v2, "cls":[Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_3

    .line 133
    const-string v6, "EseClientManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cls["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 135
    aget-object v6, v2, v4

    iput-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->spiStub:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    .end local v2    # "cls":[Ljava/lang/Class;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "EseClientManager"

    const-string v7, "spi adapter class not found"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 141
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 143
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "cls":[Ljava/lang/Class;
    .restart local v4    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->spiStub:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 145
    :try_start_1
    iget-object v6, p0, Lcom/nxp/eseclient/EseClientManager;->spiStub:Ljava/lang/Class;

    const-string v7, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    .local v0, "asInterfaceMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto/16 :goto_0

    .line 147
    .end local v0    # "asInterfaceMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "EseClientManager"

    const-string v7, "spi-asInterface method not found"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6
.end method


# virtual methods
.method public getNfcEseClientServicesAdapterInterface()Lcom/nxp/intf/IeSEClientServicesAdapter;
    .locals 6

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "ClientLdr":Lcom/nxp/intf/IeSEClientServicesAdapter;
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 208
    const-string v3, "EseClientManager"

    const-string v4, "could not retrieve NxpNfc service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 212
    :cond_0
    :try_start_0
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getNfcEseClientServicesAdapterInterface"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 213
    .local v2, "getNxpClientInterfaceMthd":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ClientLdr":Lcom/nxp/intf/IeSEClientServicesAdapter;
    check-cast v0, Lcom/nxp/intf/IeSEClientServicesAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .restart local v0    # "ClientLdr":Lcom/nxp/intf/IeSEClientServicesAdapter;
    return-object v0

    .line 214
    .end local v0    # "ClientLdr":Lcom/nxp/intf/IeSEClientServicesAdapter;
    .end local v2    # "getNxpClientInterfaceMthd":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EseClientManager"

    const-string v4, "getNfcClientServicesInterface method not found"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public getSeInterface(I)I
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 170
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 171
    .local v2, "seMedium":Ljava/lang/Integer;
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 174
    :try_start_1
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSeInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 175
    .local v1, "getSeInterface":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "seMedium":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    .end local v1    # "getSeInterface":Ljava/lang/reflect/Method;
    .restart local v2    # "seMedium":Ljava/lang/Integer;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 176
    .end local v2    # "seMedium":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EseClientManager"

    const-string v4, "Nfc-getSeInterface method not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "EseClientManager"

    const-string v4, "getSeInterface failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "seMedium":Ljava/lang/Integer;
    :cond_0
    :try_start_3
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sSpiService:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v3, :cond_1

    .line 184
    :try_start_4
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sSpiService:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSeInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 185
    .restart local v1    # "getSeInterface":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sSpiService:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "seMedium":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .restart local v2    # "seMedium":Ljava/lang/Integer;
    goto :goto_0

    .line 186
    .end local v1    # "getSeInterface":Ljava/lang/reflect/Method;
    .end local v2    # "seMedium":Ljava/lang/Integer;
    :catch_2
    move-exception v0

    .line 187
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "EseClientManager"

    const-string v4, "SPI-getSeInterface method not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "seMedium":Ljava/lang/Integer;
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    goto :goto_0
.end method

.method public getSpiEseClientServicesAdapterInterface()Lcom/nxp/intf/IeSEClientServicesAdapter;
    .locals 6

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "ClientLdr":Lcom/nxp/intf/IeSEClientServicesAdapter;
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sSpiService:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 228
    :try_start_0
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sSpiService:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSpieSEClientServicesAdapterInterface"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 229
    .local v2, "getNxpClientInterfaceMthd":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/nxp/eseclient/EseClientManager;->sSpiService:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ClientLdr":Lcom/nxp/intf/IeSEClientServicesAdapter;
    check-cast v0, Lcom/nxp/intf/IeSEClientServicesAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v2    # "getNxpClientInterfaceMthd":Ljava/lang/reflect/Method;
    .restart local v0    # "ClientLdr":Lcom/nxp/intf/IeSEClientServicesAdapter;
    :cond_0
    const-string v3, "EseClientManager"

    const-string v4, "could not retrieve SPI service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-object v0

    .line 230
    .end local v0    # "ClientLdr":Lcom/nxp/intf/IeSEClientServicesAdapter;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EseClientManager"

    const-string v4, "getSpiClientServicesInterface failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public declared-synchronized initialize()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nxp/eseclient/EseClientManager;->getNfcServiceInterface()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/nxp/eseclient/EseClientManager;->sNfcService:Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/nxp/eseclient/EseClientManager;->sNfcService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/nxp/eseclient/EseClientManager;->getNxpNfcServiceInterface()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/nxp/eseclient/EseClientManager;->getNxpNfcExtrasAdapterInterface()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/nxp/eseclient/EseClientManager;->sNxpNfcExtrasService:Ljava/lang/Object;

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/nxp/eseclient/EseClientManager;->getSpiServiceInterface()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/nxp/eseclient/EseClientManager;->sSpiService:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
