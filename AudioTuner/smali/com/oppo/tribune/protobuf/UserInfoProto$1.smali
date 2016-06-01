.class final Lcom/oppo/tribune/protobuf/UserInfoProto$1;
.super Ljava/lang/Object;
.source "UserInfoProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 5
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v4, 0x0

    .line 3163
    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto;->access$4302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3164
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3166
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x22

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "Status"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Username"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Nickname"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Realname"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Followed"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Following"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Follower"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Credits"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Gender"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Age"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Birthyear"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Birthmonth"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Birthday"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Headurl"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Constellation"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Zodiac"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "Telphone"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "Mobile"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "Height"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "Weight"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "Bloodtype"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "City"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "Address"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "Level"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "Levelname"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "Regtime"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "Dateline"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "BgType"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "Background"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "Mood"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "ShareNum"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "LikedNum"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "LikesNum"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    const-class v4, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3180
    const/4 v0, 0x0

    return-object v0
.end method
