.class public interface abstract Lcom/oneplus/gallery2/media/SeparatorMedia;
.super Ljava/lang/Object;
.source "SeparatorMedia.java"

# interfaces
.implements Lcom/oneplus/base/PropertySource;
.implements Lcom/oneplus/gallery2/media/DecorationMedia;


# static fields
.field public static final PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_TITLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 14
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Summary"

    const-class v2, Ljava/lang/CharSequence;

    const-class v3, Lcom/oneplus/gallery2/media/SeparatorMedia;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/SeparatorMedia;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    .line 18
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Title"

    const-class v2, Ljava/lang/CharSequence;

    const-class v3, Lcom/oneplus/gallery2/media/SeparatorMedia;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/SeparatorMedia;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method
