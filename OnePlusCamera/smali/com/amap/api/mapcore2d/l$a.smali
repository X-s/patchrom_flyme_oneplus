.class final enum Lcom/amap/api/mapcore2d/l$a;
.super Ljava/lang/Enum;
.source "CameraUpdateFactoryDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/mapcore2d/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum b:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum c:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum d:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum e:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum f:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum g:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum h:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum i:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum j:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum k:Lcom/amap/api/mapcore2d/l$a;

.field public static final enum l:Lcom/amap/api/mapcore2d/l$a;

.field private static final synthetic m:[Lcom/amap/api/mapcore2d/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "none"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->a:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "zoomIn"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->b:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "changeCenter"

    invoke-direct {v0, v1, v5}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->c:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "changeGeoCenterZoom"

    invoke-direct {v0, v1, v6}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->d:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "zoomOut"

    invoke-direct {v0, v1, v7}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->e:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "zoomTo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->f:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "zoomBy"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->g:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "scrollBy"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->h:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "newCameraPosition"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->i:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "newLatLngBounds"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->j:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "newLatLngBoundsWithSize"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->k:Lcom/amap/api/mapcore2d/l$a;

    new-instance v0, Lcom/amap/api/mapcore2d/l$a;

    const-string/jumbo v1, "changeGeoCenterZoomTiltBearing"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->l:Lcom/amap/api/mapcore2d/l$a;

    const/16 v0, 0xc

    .line 14
    new-array v0, v0, [Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->a:Lcom/amap/api/mapcore2d/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->b:Lcom/amap/api/mapcore2d/l$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->c:Lcom/amap/api/mapcore2d/l$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->d:Lcom/amap/api/mapcore2d/l$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->e:Lcom/amap/api/mapcore2d/l$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->f:Lcom/amap/api/mapcore2d/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->g:Lcom/amap/api/mapcore2d/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->h:Lcom/amap/api/mapcore2d/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->i:Lcom/amap/api/mapcore2d/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->j:Lcom/amap/api/mapcore2d/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->k:Lcom/amap/api/mapcore2d/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->l:Lcom/amap/api/mapcore2d/l$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore2d/l$a;->m:[Lcom/amap/api/mapcore2d/l$a;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/mapcore2d/l$a;
    .locals 1

    .prologue
    const-class v0, Lcom/amap/api/mapcore2d/l$a;

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/l$a;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/mapcore2d/l$a;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/amap/api/mapcore2d/l$a;->m:[Lcom/amap/api/mapcore2d/l$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/mapcore2d/l$a;

    return-object v0
.end method
