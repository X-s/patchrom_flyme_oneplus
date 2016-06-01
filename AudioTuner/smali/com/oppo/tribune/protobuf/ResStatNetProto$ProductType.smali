.class public final enum Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
.super Ljava/lang/Enum;
.source "ResStatNetProto.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResStatNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

.field public static final enum APP:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

.field public static final APP_VALUE:I = 0x3

.field public static final enum GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

.field public static final GAME_VALUE:I = 0x1

.field public static final enum MUSIC:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

.field public static final MUSIC_VALUE:I = 0x5

.field public static final enum NEWTHEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

.field public static final NEWTHEME_VALUE:I = 0x9

.field public static final enum THEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

.field public static final THEME_VALUE:I = 0x7

.field private static final VALUES:[Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 15
    new-instance v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v5, v5, v3}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    new-instance v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->APP:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    new-instance v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    const-string v1, "MUSIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->MUSIC:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    new-instance v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    const-string v1, "THEME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->THEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    new-instance v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    const-string v1, "NEWTHEME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->NEWTHEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->APP:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->MUSIC:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->THEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->NEWTHEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->$VALUES:[Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    .line 48
    new-instance v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType$1;-><init>()V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->APP:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->MUSIC:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->THEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->NEWTHEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->VALUES:[Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p3, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->index:I

    .line 84
    iput p4, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->value:I

    .line 85
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_0

    .line 40
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->GAME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    goto :goto_0

    .line 32
    :pswitch_2
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->APP:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->MUSIC:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    goto :goto_0

    .line 36
    :pswitch_4
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->THEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    goto :goto_0

    .line 38
    :pswitch_5
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->NEWTHEME:Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->VALUES:[Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    return-object v0
.end method

.method public static values()[Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->$VALUES:[Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    invoke-virtual {v0}, [Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
