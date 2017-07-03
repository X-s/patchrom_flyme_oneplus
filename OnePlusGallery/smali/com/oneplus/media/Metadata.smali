.class public interface abstract Lcom/oneplus/media/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;


# static fields
.field public static final PROP_DATE_TIME_ORIGINAL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 11
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "DateTimeOriginal"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/media/Metadata;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/Metadata;->PROP_DATE_TIME_ORIGINAL:Lcom/oneplus/base/PropertyKey;

    return-void
.end method
