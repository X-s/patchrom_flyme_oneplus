.class public interface abstract Lcom/oneplus/gallery2/media/TimeSeparatorMedia;
.super Ljava/lang/Object;
.source "TimeSeparatorMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/SeparatorMedia;


# static fields
.field public static final PROP_TIME:Lcom/oneplus/base/PropertyKey;
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
    .line 13
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Time"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/gallery2/media/TimeSeparatorMedia;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/TimeSeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    return-void
.end method
