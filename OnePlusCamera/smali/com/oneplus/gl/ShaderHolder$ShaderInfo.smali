.class final Lcom/oneplus/gl/ShaderHolder$ShaderInfo;
.super Ljava/lang/Object;
.source "ShaderHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gl/ShaderHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShaderInfo"
.end annotation


# instance fields
.field public final key:Lcom/oneplus/gl/ShaderHolder$ShaderKey;

.field public referenceCount:I

.field public final shader:I


# direct methods
.method public constructor <init>(Lcom/oneplus/gl/ShaderHolder$ShaderKey;I)V
    .locals 1
    .param p1, "key"    # Lcom/oneplus/gl/ShaderHolder$ShaderKey;
    .param p2, "shader"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->key:Lcom/oneplus/gl/ShaderHolder$ShaderKey;

    .line 30
    iput p2, p0, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->shader:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->referenceCount:I

    .line 27
    return-void
.end method
