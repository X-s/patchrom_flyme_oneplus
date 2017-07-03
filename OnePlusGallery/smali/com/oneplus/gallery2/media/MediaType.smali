.class public final enum Lcom/oneplus/gallery2/media/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/media/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/media/MediaType;

.field public static final enum PHOTO:Lcom/oneplus/gallery2/media/MediaType;

.field public static final enum UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

.field public static final enum VIDEO:Lcom/oneplus/gallery2/media/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/oneplus/gallery2/media/MediaType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    .line 18
    new-instance v0, Lcom/oneplus/gallery2/media/MediaType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/media/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    .line 23
    new-instance v0, Lcom/oneplus/gallery2/media/MediaType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/media/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/gallery2/media/MediaType;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery2/media/MediaType;->$VALUES:[Lcom/oneplus/gallery2/media/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromMediaStoreMediaType(I)Lcom/oneplus/gallery2/media/MediaType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 41
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    :goto_0
    return-object v0

    .line 37
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    goto :goto_0

    .line 39
    :pswitch_2
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/oneplus/gallery2/media/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/media/MediaType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->$VALUES:[Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/media/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/MediaType;

    return-object v0
.end method
