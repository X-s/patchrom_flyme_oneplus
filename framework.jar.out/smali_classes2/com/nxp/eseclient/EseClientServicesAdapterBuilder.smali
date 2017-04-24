.class public final Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;
.super Ljava/lang/Object;
.source "EseClientServicesAdapterBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EseClientServicesAdapterBuilder"

.field private static mNfcEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

.field private static mSpiEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/nxp/eseclient/EseClientServicesAdapter;

    invoke-direct {v0}, Lcom/nxp/eseclient/EseClientServicesAdapter;-><init>()V

    sput-object v0, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->mNfcEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    .line 31
    new-instance v0, Lcom/nxp/eseclient/EseClientServicesAdapter;

    invoke-direct {v0}, Lcom/nxp/eseclient/EseClientServicesAdapter;-><init>()V

    sput-object v0, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->mSpiEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEseClientServicesAdapterInstance(I)Lcom/nxp/eseclient/EseClientServicesAdapter;
    .locals 4
    .param p0, "seMedium"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "mEseClientServicesAdapterNullObject":Lcom/nxp/eseclient/EseClientServicesAdapter;
    const/4 v1, 0x0

    .line 36
    .local v1, "retVal":Z
    packed-switch p0, :pswitch_data_0

    .line 51
    const-string v2, "EseClientServicesAdapterBuilder"

    const-string v3, "invalid interface selection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    if-nez v1, :cond_1

    .line 55
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interface not available"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .end local v0    # "mEseClientServicesAdapterNullObject":Lcom/nxp/eseclient/EseClientServicesAdapter;
    :cond_1
    :goto_0
    return-object v0

    .line 39
    .restart local v0    # "mEseClientServicesAdapterNullObject":Lcom/nxp/eseclient/EseClientServicesAdapter;
    :pswitch_0
    sget-object v2, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->mNfcEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    invoke-virtual {v2, p0}, Lcom/nxp/eseclient/EseClientServicesAdapter;->initEseClientServicesAdapterInstance(I)Z

    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    sget-object v0, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->mNfcEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    goto :goto_0

    .line 45
    :pswitch_1
    sget-object v2, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->mSpiEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    invoke-virtual {v2, p0}, Lcom/nxp/eseclient/EseClientServicesAdapter;->initEseClientServicesAdapterInstance(I)Z

    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    sget-object v0, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->mSpiEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
