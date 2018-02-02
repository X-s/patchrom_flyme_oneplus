.class Lcom/adobe/xmp/XMPMetaFactory$1;
.super Ljava/lang/Object;
.source "XMPMetaFactory.java"

# interfaces
.implements Lcom/adobe/xmp/XMPVersionInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/xmp/XMPMetaFactory;->getVersionInfo()Lcom/adobe/xmp/XMPVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getBuild()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 297
    return v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 277
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Adobe XMP Core 5.1.0-jc003"

    .line 302
    return-object v0
.end method

.method public getMicro()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 282
    return v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Adobe XMP Core 5.1.0-jc003"

    .line 307
    return-object v0
.end method
