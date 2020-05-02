
kMain.o:     file format elf32-i386


Disassembly of section .text:

00100000 <inLong>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	83 ec 14             	sub    $0x14,%esp
  100006:	e8 3a 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10000b:	05 f5 6f 00 00       	add    $0x6ff5,%eax
  100010:	8b 45 08             	mov    0x8(%ebp),%eax
  100013:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  100017:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10001a:	89 c2                	mov    %eax,%edx
  10001c:	ed                   	in     (%dx),%eax
  10001d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100020:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100023:	c9                   	leave  
  100024:	c3                   	ret    

00100025 <outLong>:
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	83 ec 04             	sub    $0x4,%esp
  10002b:	e8 15 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100030:	05 d0 6f 00 00       	add    $0x6fd0,%eax
  100035:	8b 45 08             	mov    0x8(%ebp),%eax
  100038:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10003c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10003f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100042:	ef                   	out    %eax,(%dx)
  100043:	90                   	nop
  100044:	c9                   	leave  
  100045:	c3                   	ret    

00100046 <inByte>:
  100046:	55                   	push   %ebp
  100047:	89 e5                	mov    %esp,%ebp
  100049:	83 ec 14             	sub    $0x14,%esp
  10004c:	e8 f4 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100051:	05 af 6f 00 00       	add    $0x6faf,%eax
  100056:	8b 45 08             	mov    0x8(%ebp),%eax
  100059:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  10005d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100060:	89 c2                	mov    %eax,%edx
  100062:	ec                   	in     (%dx),%al
  100063:	88 45 ff             	mov    %al,-0x1(%ebp)
  100066:	8a 45 ff             	mov    -0x1(%ebp),%al
  100069:	c9                   	leave  
  10006a:	c3                   	ret    

0010006b <outByte>:
  10006b:	55                   	push   %ebp
  10006c:	89 e5                	mov    %esp,%ebp
  10006e:	83 ec 08             	sub    $0x8,%esp
  100071:	e8 cf 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100076:	05 8a 6f 00 00       	add    $0x6f8a,%eax
  10007b:	8b 45 08             	mov    0x8(%ebp),%eax
  10007e:	8b 55 0c             	mov    0xc(%ebp),%edx
  100081:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100085:	88 d0                	mov    %dl,%al
  100087:	88 45 f8             	mov    %al,-0x8(%ebp)
  10008a:	8a 45 f8             	mov    -0x8(%ebp),%al
  10008d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100090:	ee                   	out    %al,(%dx)
  100091:	90                   	nop
  100092:	c9                   	leave  
  100093:	c3                   	ret    

00100094 <waitDisk>:
  100094:	55                   	push   %ebp
  100095:	89 e5                	mov    %esp,%ebp
  100097:	e8 a9 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10009c:	05 64 6f 00 00       	add    $0x6f64,%eax
  1000a1:	90                   	nop
  1000a2:	68 f7 01 00 00       	push   $0x1f7
  1000a7:	e8 9a ff ff ff       	call   100046 <inByte>
  1000ac:	83 c4 04             	add    $0x4,%esp
  1000af:	0f b6 c0             	movzbl %al,%eax
  1000b2:	25 c0 00 00 00       	and    $0xc0,%eax
  1000b7:	83 f8 40             	cmp    $0x40,%eax
  1000ba:	75 e6                	jne    1000a2 <waitDisk+0xe>
  1000bc:	90                   	nop
  1000bd:	c9                   	leave  
  1000be:	c3                   	ret    

001000bf <readSect>:
  1000bf:	55                   	push   %ebp
  1000c0:	89 e5                	mov    %esp,%ebp
  1000c2:	53                   	push   %ebx
  1000c3:	83 ec 10             	sub    $0x10,%esp
  1000c6:	e8 7a 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  1000cb:	05 35 6f 00 00       	add    $0x6f35,%eax
  1000d0:	e8 bf ff ff ff       	call   100094 <waitDisk>
  1000d5:	6a 01                	push   $0x1
  1000d7:	68 f2 01 00 00       	push   $0x1f2
  1000dc:	e8 8a ff ff ff       	call   10006b <outByte>
  1000e1:	83 c4 08             	add    $0x8,%esp
  1000e4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000e7:	0f be c0             	movsbl %al,%eax
  1000ea:	50                   	push   %eax
  1000eb:	68 f3 01 00 00       	push   $0x1f3
  1000f0:	e8 76 ff ff ff       	call   10006b <outByte>
  1000f5:	83 c4 08             	add    $0x8,%esp
  1000f8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000fb:	c1 f8 08             	sar    $0x8,%eax
  1000fe:	0f be c0             	movsbl %al,%eax
  100101:	50                   	push   %eax
  100102:	68 f4 01 00 00       	push   $0x1f4
  100107:	e8 5f ff ff ff       	call   10006b <outByte>
  10010c:	83 c4 08             	add    $0x8,%esp
  10010f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100112:	c1 f8 10             	sar    $0x10,%eax
  100115:	0f be c0             	movsbl %al,%eax
  100118:	50                   	push   %eax
  100119:	68 f5 01 00 00       	push   $0x1f5
  10011e:	e8 48 ff ff ff       	call   10006b <outByte>
  100123:	83 c4 08             	add    $0x8,%esp
  100126:	8b 45 0c             	mov    0xc(%ebp),%eax
  100129:	c1 f8 18             	sar    $0x18,%eax
  10012c:	83 c8 e0             	or     $0xffffffe0,%eax
  10012f:	0f be c0             	movsbl %al,%eax
  100132:	50                   	push   %eax
  100133:	68 f6 01 00 00       	push   $0x1f6
  100138:	e8 2e ff ff ff       	call   10006b <outByte>
  10013d:	83 c4 08             	add    $0x8,%esp
  100140:	6a 20                	push   $0x20
  100142:	68 f7 01 00 00       	push   $0x1f7
  100147:	e8 1f ff ff ff       	call   10006b <outByte>
  10014c:	83 c4 08             	add    $0x8,%esp
  10014f:	e8 40 ff ff ff       	call   100094 <waitDisk>
  100154:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10015b:	eb 22                	jmp    10017f <readSect+0xc0>
  10015d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100160:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100167:	8b 45 08             	mov    0x8(%ebp),%eax
  10016a:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
  10016d:	68 f0 01 00 00       	push   $0x1f0
  100172:	e8 89 fe ff ff       	call   100000 <inLong>
  100177:	83 c4 04             	add    $0x4,%esp
  10017a:	89 03                	mov    %eax,(%ebx)
  10017c:	ff 45 f8             	incl   -0x8(%ebp)
  10017f:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
  100183:	7e d8                	jle    10015d <readSect+0x9e>
  100185:	90                   	nop
  100186:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100189:	c9                   	leave  
  10018a:	c3                   	ret    

0010018b <writeSect>:
  10018b:	55                   	push   %ebp
  10018c:	89 e5                	mov    %esp,%ebp
  10018e:	83 ec 10             	sub    $0x10,%esp
  100191:	e8 af 02 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100196:	05 6a 6e 00 00       	add    $0x6e6a,%eax
  10019b:	e8 f4 fe ff ff       	call   100094 <waitDisk>
  1001a0:	6a 01                	push   $0x1
  1001a2:	68 f2 01 00 00       	push   $0x1f2
  1001a7:	e8 bf fe ff ff       	call   10006b <outByte>
  1001ac:	83 c4 08             	add    $0x8,%esp
  1001af:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001b2:	0f be c0             	movsbl %al,%eax
  1001b5:	50                   	push   %eax
  1001b6:	68 f3 01 00 00       	push   $0x1f3
  1001bb:	e8 ab fe ff ff       	call   10006b <outByte>
  1001c0:	83 c4 08             	add    $0x8,%esp
  1001c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001c6:	c1 f8 08             	sar    $0x8,%eax
  1001c9:	0f be c0             	movsbl %al,%eax
  1001cc:	50                   	push   %eax
  1001cd:	68 f4 01 00 00       	push   $0x1f4
  1001d2:	e8 94 fe ff ff       	call   10006b <outByte>
  1001d7:	83 c4 08             	add    $0x8,%esp
  1001da:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001dd:	c1 f8 10             	sar    $0x10,%eax
  1001e0:	0f be c0             	movsbl %al,%eax
  1001e3:	50                   	push   %eax
  1001e4:	68 f5 01 00 00       	push   $0x1f5
  1001e9:	e8 7d fe ff ff       	call   10006b <outByte>
  1001ee:	83 c4 08             	add    $0x8,%esp
  1001f1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001f4:	c1 f8 18             	sar    $0x18,%eax
  1001f7:	83 c8 e0             	or     $0xffffffe0,%eax
  1001fa:	0f be c0             	movsbl %al,%eax
  1001fd:	50                   	push   %eax
  1001fe:	68 f6 01 00 00       	push   $0x1f6
  100203:	e8 63 fe ff ff       	call   10006b <outByte>
  100208:	83 c4 08             	add    $0x8,%esp
  10020b:	6a 30                	push   $0x30
  10020d:	68 f7 01 00 00       	push   $0x1f7
  100212:	e8 54 fe ff ff       	call   10006b <outByte>
  100217:	83 c4 08             	add    $0x8,%esp
  10021a:	e8 75 fe ff ff       	call   100094 <waitDisk>
  10021f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100226:	eb 22                	jmp    10024a <writeSect+0xbf>
  100228:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10022b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100232:	8b 45 08             	mov    0x8(%ebp),%eax
  100235:	01 d0                	add    %edx,%eax
  100237:	8b 00                	mov    (%eax),%eax
  100239:	50                   	push   %eax
  10023a:	68 f0 01 00 00       	push   $0x1f0
  10023f:	e8 e1 fd ff ff       	call   100025 <outLong>
  100244:	83 c4 08             	add    $0x8,%esp
  100247:	ff 45 fc             	incl   -0x4(%ebp)
  10024a:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%ebp)
  10024e:	7e d8                	jle    100228 <writeSect+0x9d>
  100250:	90                   	nop
  100251:	c9                   	leave  
  100252:	c3                   	ret    

00100253 <diskRead>:
  100253:	55                   	push   %ebp
  100254:	89 e5                	mov    %esp,%ebp
  100256:	81 ec 10 02 00 00    	sub    $0x210,%esp
  10025c:	e8 e4 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100261:	05 9f 6d 00 00       	add    $0x6d9f,%eax
  100266:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10026d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100274:	8b 45 14             	mov    0x14(%ebp),%eax
  100277:	85 c0                	test   %eax,%eax
  100279:	79 05                	jns    100280 <diskRead+0x2d>
  10027b:	05 ff 01 00 00       	add    $0x1ff,%eax
  100280:	c1 f8 09             	sar    $0x9,%eax
  100283:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100286:	8b 45 14             	mov    0x14(%ebp),%eax
  100289:	25 ff 01 00 80       	and    $0x800001ff,%eax
  10028e:	85 c0                	test   %eax,%eax
  100290:	79 07                	jns    100299 <diskRead+0x46>
  100292:	48                   	dec    %eax
  100293:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100298:	40                   	inc    %eax
  100299:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10029c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10029f:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1002a5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1002a8:	01 d0                	add    %edx,%eax
  1002aa:	50                   	push   %eax
  1002ab:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1002b1:	50                   	push   %eax
  1002b2:	e8 08 fe ff ff       	call   1000bf <readSect>
  1002b7:	83 c4 08             	add    $0x8,%esp
  1002ba:	ff 45 f8             	incl   -0x8(%ebp)
  1002bd:	eb 5e                	jmp    10031d <diskRead+0xca>
  1002bf:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002c2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002c5:	01 d0                	add    %edx,%eax
  1002c7:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1002cc:	85 c0                	test   %eax,%eax
  1002ce:	79 07                	jns    1002d7 <diskRead+0x84>
  1002d0:	48                   	dec    %eax
  1002d1:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1002d6:	40                   	inc    %eax
  1002d7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1002da:	8b 55 08             	mov    0x8(%ebp),%edx
  1002dd:	01 ca                	add    %ecx,%edx
  1002df:	8a 84 05 f0 fd ff ff 	mov    -0x210(%ebp,%eax,1),%al
  1002e6:	88 02                	mov    %al,(%edx)
  1002e8:	ff 45 fc             	incl   -0x4(%ebp)
  1002eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002f1:	01 d0                	add    %edx,%eax
  1002f3:	25 ff 01 00 00       	and    $0x1ff,%eax
  1002f8:	85 c0                	test   %eax,%eax
  1002fa:	75 21                	jne    10031d <diskRead+0xca>
  1002fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002ff:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  100305:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100308:	01 d0                	add    %edx,%eax
  10030a:	50                   	push   %eax
  10030b:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100311:	50                   	push   %eax
  100312:	e8 a8 fd ff ff       	call   1000bf <readSect>
  100317:	83 c4 08             	add    $0x8,%esp
  10031a:	ff 45 f8             	incl   -0x8(%ebp)
  10031d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100320:	0f af 45 10          	imul   0x10(%ebp),%eax
  100324:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  100327:	7c 96                	jl     1002bf <diskRead+0x6c>
  100329:	90                   	nop
  10032a:	c9                   	leave  
  10032b:	c3                   	ret    

0010032c <diskWrite>:
  10032c:	55                   	push   %ebp
  10032d:	89 e5                	mov    %esp,%ebp
  10032f:	81 ec 10 02 00 00    	sub    $0x210,%esp
  100335:	e8 0b 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10033a:	05 c6 6c 00 00       	add    $0x6cc6,%eax
  10033f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100346:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10034d:	8b 45 14             	mov    0x14(%ebp),%eax
  100350:	85 c0                	test   %eax,%eax
  100352:	79 05                	jns    100359 <diskWrite+0x2d>
  100354:	05 ff 01 00 00       	add    $0x1ff,%eax
  100359:	c1 f8 09             	sar    $0x9,%eax
  10035c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10035f:	8b 45 14             	mov    0x14(%ebp),%eax
  100362:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100367:	85 c0                	test   %eax,%eax
  100369:	79 07                	jns    100372 <diskWrite+0x46>
  10036b:	48                   	dec    %eax
  10036c:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100371:	40                   	inc    %eax
  100372:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100375:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100378:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10037e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100381:	01 d0                	add    %edx,%eax
  100383:	50                   	push   %eax
  100384:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10038a:	50                   	push   %eax
  10038b:	e8 2f fd ff ff       	call   1000bf <readSect>
  100390:	83 c4 08             	add    $0x8,%esp
  100393:	eb 7f                	jmp    100414 <diskWrite+0xe8>
  100395:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100398:	8b 45 08             	mov    0x8(%ebp),%eax
  10039b:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  10039e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003a4:	01 d0                	add    %edx,%eax
  1003a6:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1003ab:	85 c0                	test   %eax,%eax
  1003ad:	79 07                	jns    1003b6 <diskWrite+0x8a>
  1003af:	48                   	dec    %eax
  1003b0:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1003b5:	40                   	inc    %eax
  1003b6:	89 c2                	mov    %eax,%edx
  1003b8:	8a 01                	mov    (%ecx),%al
  1003ba:	88 84 15 f0 fd ff ff 	mov    %al,-0x210(%ebp,%edx,1)
  1003c1:	ff 45 fc             	incl   -0x4(%ebp)
  1003c4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003c7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003ca:	01 d0                	add    %edx,%eax
  1003cc:	25 ff 01 00 00       	and    $0x1ff,%eax
  1003d1:	85 c0                	test   %eax,%eax
  1003d3:	75 3f                	jne    100414 <diskWrite+0xe8>
  1003d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003d8:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003de:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1003e1:	01 d0                	add    %edx,%eax
  1003e3:	50                   	push   %eax
  1003e4:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1003ea:	50                   	push   %eax
  1003eb:	e8 9b fd ff ff       	call   10018b <writeSect>
  1003f0:	83 c4 08             	add    $0x8,%esp
  1003f3:	ff 45 f8             	incl   -0x8(%ebp)
  1003f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003f9:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003ff:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100402:	01 d0                	add    %edx,%eax
  100404:	50                   	push   %eax
  100405:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10040b:	50                   	push   %eax
  10040c:	e8 ae fc ff ff       	call   1000bf <readSect>
  100411:	83 c4 08             	add    $0x8,%esp
  100414:	8b 45 0c             	mov    0xc(%ebp),%eax
  100417:	0f af 45 10          	imul   0x10(%ebp),%eax
  10041b:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10041e:	0f 8c 71 ff ff ff    	jl     100395 <diskWrite+0x69>
  100424:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100427:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10042d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100430:	01 d0                	add    %edx,%eax
  100432:	50                   	push   %eax
  100433:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100439:	50                   	push   %eax
  10043a:	e8 4c fd ff ff       	call   10018b <writeSect>
  10043f:	83 c4 08             	add    $0x8,%esp
  100442:	90                   	nop
  100443:	c9                   	leave  
  100444:	c3                   	ret    

00100445 <__x86.get_pc_thunk.ax>:
  100445:	8b 04 24             	mov    (%esp),%eax
  100448:	c3                   	ret    

00100449 <readSuperBlock>:
  100449:	55                   	push   %ebp
  10044a:	89 e5                	mov    %esp,%ebp
  10044c:	53                   	push   %ebx
  10044d:	83 ec 04             	sub    $0x4,%esp
  100450:	e8 f0 ff ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100455:	05 ab 6b 00 00       	add    $0x6bab,%eax
  10045a:	6a 00                	push   $0x0
  10045c:	6a 01                	push   $0x1
  10045e:	68 00 04 00 00       	push   $0x400
  100463:	ff 75 08             	pushl  0x8(%ebp)
  100466:	89 c3                	mov    %eax,%ebx
  100468:	e8 e6 fd ff ff       	call   100253 <diskRead>
  10046d:	83 c4 10             	add    $0x10,%esp
  100470:	b8 00 00 00 00       	mov    $0x0,%eax
  100475:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100478:	c9                   	leave  
  100479:	c3                   	ret    

0010047a <readBlock>:
  10047a:	55                   	push   %ebp
  10047b:	89 e5                	mov    %esp,%ebp
  10047d:	56                   	push   %esi
  10047e:	53                   	push   %ebx
  10047f:	83 ec 20             	sub    $0x20,%esp
  100482:	e8 ae 03 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100487:	81 c3 79 6b 00 00    	add    $0x6b79,%ebx
  10048d:	89 e0                	mov    %esp,%eax
  10048f:	89 c6                	mov    %eax,%esi
  100491:	8b 45 08             	mov    0x8(%ebp),%eax
  100494:	8b 40 14             	mov    0x14(%eax),%eax
  100497:	85 c0                	test   %eax,%eax
  100499:	79 03                	jns    10049e <readBlock+0x24>
  10049b:	83 c0 03             	add    $0x3,%eax
  10049e:	c1 f8 02             	sar    $0x2,%eax
  1004a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004a4:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
  1004ab:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1004ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b1:	01 d0                	add    %edx,%eax
  1004b3:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1004b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b9:	8d 50 ff             	lea    -0x1(%eax),%edx
  1004bc:	89 55 e8             	mov    %edx,-0x18(%ebp)
  1004bf:	c1 e0 02             	shl    $0x2,%eax
  1004c2:	8d 50 03             	lea    0x3(%eax),%edx
  1004c5:	b8 10 00 00 00       	mov    $0x10,%eax
  1004ca:	48                   	dec    %eax
  1004cb:	01 d0                	add    %edx,%eax
  1004cd:	b9 10 00 00 00       	mov    $0x10,%ecx
  1004d2:	ba 00 00 00 00       	mov    $0x0,%edx
  1004d7:	f7 f1                	div    %ecx
  1004d9:	6b c0 10             	imul   $0x10,%eax,%eax
  1004dc:	29 c4                	sub    %eax,%esp
  1004de:	89 e0                	mov    %esp,%eax
  1004e0:	83 c0 03             	add    $0x3,%eax
  1004e3:	c1 e8 02             	shr    $0x2,%eax
  1004e6:	c1 e0 02             	shl    $0x2,%eax
  1004e9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1004ec:	8b 45 10             	mov    0x10(%ebp),%eax
  1004ef:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1004f2:	7d 2b                	jge    10051f <readBlock+0xa5>
  1004f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004f7:	8b 55 10             	mov    0x10(%ebp),%edx
  1004fa:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
  1004fe:	c1 e0 09             	shl    $0x9,%eax
  100501:	89 c2                	mov    %eax,%edx
  100503:	8b 45 08             	mov    0x8(%ebp),%eax
  100506:	8b 40 14             	mov    0x14(%eax),%eax
  100509:	52                   	push   %edx
  10050a:	50                   	push   %eax
  10050b:	6a 01                	push   $0x1
  10050d:	ff 75 14             	pushl  0x14(%ebp)
  100510:	e8 3e fd ff ff       	call   100253 <diskRead>
  100515:	83 c4 10             	add    $0x10,%esp
  100518:	b8 00 00 00 00       	mov    $0x0,%eax
  10051d:	eb 5d                	jmp    10057c <readBlock+0x102>
  10051f:	8b 45 10             	mov    0x10(%ebp),%eax
  100522:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  100525:	7d 50                	jge    100577 <readBlock+0xfd>
  100527:	8b 45 0c             	mov    0xc(%ebp),%eax
  10052a:	8b 40 44             	mov    0x44(%eax),%eax
  10052d:	c1 e0 09             	shl    $0x9,%eax
  100530:	89 c1                	mov    %eax,%ecx
  100532:	8b 45 08             	mov    0x8(%ebp),%eax
  100535:	8b 50 14             	mov    0x14(%eax),%edx
  100538:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10053b:	51                   	push   %ecx
  10053c:	52                   	push   %edx
  10053d:	6a 01                	push   $0x1
  10053f:	50                   	push   %eax
  100540:	e8 0e fd ff ff       	call   100253 <diskRead>
  100545:	83 c4 10             	add    $0x10,%esp
  100548:	8b 45 10             	mov    0x10(%ebp),%eax
  10054b:	2b 45 f0             	sub    -0x10(%ebp),%eax
  10054e:	89 c2                	mov    %eax,%edx
  100550:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100553:	8b 04 90             	mov    (%eax,%edx,4),%eax
  100556:	c1 e0 09             	shl    $0x9,%eax
  100559:	89 c2                	mov    %eax,%edx
  10055b:	8b 45 08             	mov    0x8(%ebp),%eax
  10055e:	8b 40 14             	mov    0x14(%eax),%eax
  100561:	52                   	push   %edx
  100562:	50                   	push   %eax
  100563:	6a 01                	push   $0x1
  100565:	ff 75 14             	pushl  0x14(%ebp)
  100568:	e8 e6 fc ff ff       	call   100253 <diskRead>
  10056d:	83 c4 10             	add    $0x10,%esp
  100570:	b8 00 00 00 00       	mov    $0x0,%eax
  100575:	eb 05                	jmp    10057c <readBlock+0x102>
  100577:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10057c:	89 f4                	mov    %esi,%esp
  10057e:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100581:	5b                   	pop    %ebx
  100582:	5e                   	pop    %esi
  100583:	5d                   	pop    %ebp
  100584:	c3                   	ret    

00100585 <readInode>:
  100585:	55                   	push   %ebp
  100586:	89 e5                	mov    %esp,%ebp
  100588:	57                   	push   %edi
  100589:	56                   	push   %esi
  10058a:	53                   	push   %ebx
  10058b:	83 ec 3c             	sub    $0x3c,%esp
  10058e:	e8 a2 02 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100593:	81 c3 6d 6a 00 00    	add    $0x6a6d,%ebx
  100599:	89 e0                	mov    %esp,%eax
  10059b:	89 c6                	mov    %eax,%esi
  10059d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1005a4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1005ab:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  1005b2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1005b9:	8b 45 10             	mov    0x10(%ebp),%eax
  1005bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1005c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1005c5:	8b 40 14             	mov    0x14(%eax),%eax
  1005c8:	8d 50 ff             	lea    -0x1(%eax),%edx
  1005cb:	89 55 d0             	mov    %edx,-0x30(%ebp)
  1005ce:	89 c2                	mov    %eax,%edx
  1005d0:	b8 10 00 00 00       	mov    $0x10,%eax
  1005d5:	48                   	dec    %eax
  1005d6:	01 d0                	add    %edx,%eax
  1005d8:	bf 10 00 00 00       	mov    $0x10,%edi
  1005dd:	ba 00 00 00 00       	mov    $0x0,%edx
  1005e2:	f7 f7                	div    %edi
  1005e4:	6b c0 10             	imul   $0x10,%eax,%eax
  1005e7:	29 c4                	sub    %eax,%esp
  1005e9:	89 e0                	mov    %esp,%eax
  1005eb:	83 c0 00             	add    $0x0,%eax
  1005ee:	89 45 cc             	mov    %eax,-0x34(%ebp)
  1005f1:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
  1005f8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1005ff:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
  100606:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
  10060d:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  100611:	74 0e                	je     100621 <readInode+0x9c>
  100613:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100616:	8b 45 14             	mov    0x14(%ebp),%eax
  100619:	01 d0                	add    %edx,%eax
  10061b:	8a 00                	mov    (%eax),%al
  10061d:	84 c0                	test   %al,%al
  10061f:	75 0a                	jne    10062b <readInode+0xa6>
  100621:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100626:	e9 00 02 00 00       	jmp    10082b <readInode+0x2a6>
  10062b:	83 ec 04             	sub    $0x4,%esp
  10062e:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100631:	50                   	push   %eax
  100632:	6a 2f                	push   $0x2f
  100634:	ff 75 14             	pushl  0x14(%ebp)
  100637:	e8 a8 40 00 00       	call   1046e4 <stringChr>
  10063c:	83 c4 10             	add    $0x10,%esp
  10063f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  100642:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100646:	74 07                	je     10064f <readInode+0xca>
  100648:	8b 45 c0             	mov    -0x40(%ebp),%eax
  10064b:	85 c0                	test   %eax,%eax
  10064d:	74 0a                	je     100659 <readInode+0xd4>
  10064f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100654:	e9 d2 01 00 00       	jmp    10082b <readInode+0x2a6>
  100659:	ff 45 e4             	incl   -0x1c(%ebp)
  10065c:	8b 45 08             	mov    0x8(%ebp),%eax
  10065f:	8b 40 20             	mov    0x20(%eax),%eax
  100662:	c1 e0 09             	shl    $0x9,%eax
  100665:	89 c2                	mov    %eax,%edx
  100667:	8b 45 10             	mov    0x10(%ebp),%eax
  10066a:	89 10                	mov    %edx,(%eax)
  10066c:	8b 45 10             	mov    0x10(%ebp),%eax
  10066f:	8b 00                	mov    (%eax),%eax
  100671:	50                   	push   %eax
  100672:	6a 01                	push   $0x1
  100674:	68 80 00 00 00       	push   $0x80
  100679:	ff 75 0c             	pushl  0xc(%ebp)
  10067c:	e8 d2 fb ff ff       	call   100253 <diskRead>
  100681:	83 c4 10             	add    $0x10,%esp
  100684:	e9 8b 01 00 00       	jmp    100814 <readInode+0x28f>
  100689:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10068c:	8b 45 14             	mov    0x14(%ebp),%eax
  10068f:	01 c2                	add    %eax,%edx
  100691:	83 ec 04             	sub    $0x4,%esp
  100694:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100697:	50                   	push   %eax
  100698:	6a 2f                	push   $0x2f
  10069a:	52                   	push   %edx
  10069b:	e8 44 40 00 00       	call   1046e4 <stringChr>
  1006a0:	83 c4 10             	add    $0x10,%esp
  1006a3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1006a6:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1006aa:	75 11                	jne    1006bd <readInode+0x138>
  1006ac:	8b 45 c0             	mov    -0x40(%ebp),%eax
  1006af:	85 c0                	test   %eax,%eax
  1006b1:	75 0a                	jne    1006bd <readInode+0x138>
  1006b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006b8:	e9 6e 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006bd:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  1006c1:	75 09                	jne    1006cc <readInode+0x147>
  1006c3:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
  1006ca:	eb 15                	jmp    1006e1 <readInode+0x15c>
  1006cc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006cf:	8b 00                	mov    (%eax),%eax
  1006d1:	66 83 f8 01          	cmp    $0x1,%ax
  1006d5:	75 0a                	jne    1006e1 <readInode+0x15c>
  1006d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006dc:	e9 4a 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006e1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006e4:	8b 40 04             	mov    0x4(%eax),%eax
  1006e7:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  1006ea:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1006f1:	e9 ea 00 00 00       	jmp    1007e0 <readInode+0x25b>
  1006f6:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1006f9:	50                   	push   %eax
  1006fa:	ff 75 d8             	pushl  -0x28(%ebp)
  1006fd:	ff 75 0c             	pushl  0xc(%ebp)
  100700:	ff 75 08             	pushl  0x8(%ebp)
  100703:	e8 72 fd ff ff       	call   10047a <readBlock>
  100708:	83 c4 10             	add    $0x10,%esp
  10070b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  10070e:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100712:	75 0a                	jne    10071e <readInode+0x199>
  100714:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100719:	e9 0d 01 00 00       	jmp    10082b <readInode+0x2a6>
  10071e:	8b 45 cc             	mov    -0x34(%ebp),%eax
  100721:	89 45 c8             	mov    %eax,-0x38(%ebp)
  100724:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10072b:	e9 85 00 00 00       	jmp    1007b5 <readInode+0x230>
  100730:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100733:	c1 e0 07             	shl    $0x7,%eax
  100736:	89 c2                	mov    %eax,%edx
  100738:	8b 45 c8             	mov    -0x38(%ebp),%eax
  10073b:	01 d0                	add    %edx,%eax
  10073d:	8b 00                	mov    (%eax),%eax
  10073f:	85 c0                	test   %eax,%eax
  100741:	74 6e                	je     1007b1 <readInode+0x22c>
  100743:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100746:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  100749:	8b 55 14             	mov    0x14(%ebp),%edx
  10074c:	01 d1                	add    %edx,%ecx
  10074e:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100751:	89 d7                	mov    %edx,%edi
  100753:	c1 e7 07             	shl    $0x7,%edi
  100756:	8b 55 c8             	mov    -0x38(%ebp),%edx
  100759:	01 fa                	add    %edi,%edx
  10075b:	83 c2 04             	add    $0x4,%edx
  10075e:	83 ec 04             	sub    $0x4,%esp
  100761:	50                   	push   %eax
  100762:	51                   	push   %ecx
  100763:	52                   	push   %edx
  100764:	e8 a2 40 00 00       	call   10480b <stringCmp>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	85 c0                	test   %eax,%eax
  10076e:	75 42                	jne    1007b2 <readInode+0x22d>
  100770:	8b 45 08             	mov    0x8(%ebp),%eax
  100773:	8b 40 20             	mov    0x20(%eax),%eax
  100776:	c1 e0 09             	shl    $0x9,%eax
  100779:	89 c2                	mov    %eax,%edx
  10077b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10077e:	c1 e0 07             	shl    $0x7,%eax
  100781:	89 c1                	mov    %eax,%ecx
  100783:	8b 45 c8             	mov    -0x38(%ebp),%eax
  100786:	01 c8                	add    %ecx,%eax
  100788:	8b 00                	mov    (%eax),%eax
  10078a:	48                   	dec    %eax
  10078b:	c1 e0 07             	shl    $0x7,%eax
  10078e:	01 d0                	add    %edx,%eax
  100790:	89 c2                	mov    %eax,%edx
  100792:	8b 45 10             	mov    0x10(%ebp),%eax
  100795:	89 10                	mov    %edx,(%eax)
  100797:	8b 45 10             	mov    0x10(%ebp),%eax
  10079a:	8b 00                	mov    (%eax),%eax
  10079c:	50                   	push   %eax
  10079d:	6a 01                	push   $0x1
  10079f:	68 80 00 00 00       	push   $0x80
  1007a4:	ff 75 0c             	pushl  0xc(%ebp)
  1007a7:	e8 a7 fa ff ff       	call   100253 <diskRead>
  1007ac:	83 c4 10             	add    $0x10,%esp
  1007af:	eb 1a                	jmp    1007cb <readInode+0x246>
  1007b1:	90                   	nop
  1007b2:	ff 45 dc             	incl   -0x24(%ebp)
  1007b5:	8b 45 08             	mov    0x8(%ebp),%eax
  1007b8:	8b 40 14             	mov    0x14(%eax),%eax
  1007bb:	c1 e8 07             	shr    $0x7,%eax
  1007be:	89 c2                	mov    %eax,%edx
  1007c0:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007c3:	39 c2                	cmp    %eax,%edx
  1007c5:	0f 87 65 ff ff ff    	ja     100730 <readInode+0x1ab>
  1007cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1007ce:	8b 40 14             	mov    0x14(%eax),%eax
  1007d1:	c1 e8 07             	shr    $0x7,%eax
  1007d4:	89 c2                	mov    %eax,%edx
  1007d6:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007d9:	39 c2                	cmp    %eax,%edx
  1007db:	77 11                	ja     1007ee <readInode+0x269>
  1007dd:	ff 45 d8             	incl   -0x28(%ebp)
  1007e0:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007e3:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007e6:	0f 8c 0a ff ff ff    	jl     1006f6 <readInode+0x171>
  1007ec:	eb 01                	jmp    1007ef <readInode+0x26a>
  1007ee:	90                   	nop
  1007ef:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007f2:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007f5:	7d 16                	jge    10080d <readInode+0x288>
  1007f7:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  1007fb:	75 09                	jne    100806 <readInode+0x281>
  1007fd:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100800:	40                   	inc    %eax
  100801:	01 45 e4             	add    %eax,-0x1c(%ebp)
  100804:	eb 0e                	jmp    100814 <readInode+0x28f>
  100806:	b8 00 00 00 00       	mov    $0x0,%eax
  10080b:	eb 1e                	jmp    10082b <readInode+0x2a6>
  10080d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100812:	eb 17                	jmp    10082b <readInode+0x2a6>
  100814:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100817:	8b 45 14             	mov    0x14(%ebp),%eax
  10081a:	01 d0                	add    %edx,%eax
  10081c:	8a 00                	mov    (%eax),%al
  10081e:	84 c0                	test   %al,%al
  100820:	0f 85 63 fe ff ff    	jne    100689 <readInode+0x104>
  100826:	b8 00 00 00 00       	mov    $0x0,%eax
  10082b:	89 f4                	mov    %esi,%esp
  10082d:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100830:	5b                   	pop    %ebx
  100831:	5e                   	pop    %esi
  100832:	5f                   	pop    %edi
  100833:	5d                   	pop    %ebp
  100834:	c3                   	ret    

00100835 <__x86.get_pc_thunk.bx>:
  100835:	8b 1c 24             	mov    (%esp),%ebx
  100838:	c3                   	ret    

00100839 <outByte>:
  100839:	55                   	push   %ebp
  10083a:	89 e5                	mov    %esp,%ebp
  10083c:	83 ec 08             	sub    $0x8,%esp
  10083f:	e8 01 fc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100844:	05 bc 67 00 00       	add    $0x67bc,%eax
  100849:	8b 45 08             	mov    0x8(%ebp),%eax
  10084c:	8b 55 0c             	mov    0xc(%ebp),%edx
  10084f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100853:	88 d0                	mov    %dl,%al
  100855:	88 45 f8             	mov    %al,-0x8(%ebp)
  100858:	8a 45 f8             	mov    -0x8(%ebp),%al
  10085b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10085e:	ee                   	out    %al,(%dx)
  10085f:	90                   	nop
  100860:	c9                   	leave  
  100861:	c3                   	ret    

00100862 <initIntr>:
  100862:	55                   	push   %ebp
  100863:	89 e5                	mov    %esp,%ebp
  100865:	e8 db fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10086a:	05 96 67 00 00       	add    $0x6796,%eax
  10086f:	6a 11                	push   $0x11
  100871:	6a 20                	push   $0x20
  100873:	e8 c1 ff ff ff       	call   100839 <outByte>
  100878:	83 c4 08             	add    $0x8,%esp
  10087b:	6a 11                	push   $0x11
  10087d:	68 a0 00 00 00       	push   $0xa0
  100882:	e8 b2 ff ff ff       	call   100839 <outByte>
  100887:	83 c4 08             	add    $0x8,%esp
  10088a:	6a 20                	push   $0x20
  10088c:	6a 21                	push   $0x21
  10088e:	e8 a6 ff ff ff       	call   100839 <outByte>
  100893:	83 c4 08             	add    $0x8,%esp
  100896:	6a 28                	push   $0x28
  100898:	68 a1 00 00 00       	push   $0xa1
  10089d:	e8 97 ff ff ff       	call   100839 <outByte>
  1008a2:	83 c4 08             	add    $0x8,%esp
  1008a5:	6a 04                	push   $0x4
  1008a7:	6a 21                	push   $0x21
  1008a9:	e8 8b ff ff ff       	call   100839 <outByte>
  1008ae:	83 c4 08             	add    $0x8,%esp
  1008b1:	6a 02                	push   $0x2
  1008b3:	68 a1 00 00 00       	push   $0xa1
  1008b8:	e8 7c ff ff ff       	call   100839 <outByte>
  1008bd:	83 c4 08             	add    $0x8,%esp
  1008c0:	6a 03                	push   $0x3
  1008c2:	6a 21                	push   $0x21
  1008c4:	e8 70 ff ff ff       	call   100839 <outByte>
  1008c9:	83 c4 08             	add    $0x8,%esp
  1008cc:	6a 03                	push   $0x3
  1008ce:	68 a1 00 00 00       	push   $0xa1
  1008d3:	e8 61 ff ff ff       	call   100839 <outByte>
  1008d8:	83 c4 08             	add    $0x8,%esp
  1008db:	90                   	nop
  1008dc:	c9                   	leave  
  1008dd:	c3                   	ret    

001008de <saveIdt>:
  1008de:	55                   	push   %ebp
  1008df:	89 e5                	mov    %esp,%ebp
  1008e1:	e8 5f fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1008e6:	05 1a 67 00 00       	add    $0x671a,%eax
  1008eb:	8b 55 0c             	mov    0xc(%ebp),%edx
  1008ee:	4a                   	dec    %edx
  1008ef:	66 89 90 20 01 00 00 	mov    %dx,0x120(%eax)
  1008f6:	8b 55 08             	mov    0x8(%ebp),%edx
  1008f9:	66 89 90 22 01 00 00 	mov    %dx,0x122(%eax)
  100900:	8b 55 08             	mov    0x8(%ebp),%edx
  100903:	c1 ea 10             	shr    $0x10,%edx
  100906:	66 89 90 24 01 00 00 	mov    %dx,0x124(%eax)
  10090d:	8d 80 20 01 00 00    	lea    0x120(%eax),%eax
  100913:	0f 01 18             	lidtl  (%eax)
  100916:	90                   	nop
  100917:	5d                   	pop    %ebp
  100918:	c3                   	ret    

00100919 <setIntr>:
  100919:	55                   	push   %ebp
  10091a:	89 e5                	mov    %esp,%ebp
  10091c:	e8 24 fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100921:	05 df 66 00 00       	add    $0x66df,%eax
  100926:	8b 45 10             	mov    0x10(%ebp),%eax
  100929:	8b 55 08             	mov    0x8(%ebp),%edx
  10092c:	66 89 02             	mov    %ax,(%edx)
  10092f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100932:	c1 e0 03             	shl    $0x3,%eax
  100935:	8b 55 08             	mov    0x8(%ebp),%edx
  100938:	66 89 42 02          	mov    %ax,0x2(%edx)
  10093c:	8b 45 08             	mov    0x8(%ebp),%eax
  10093f:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100943:	8b 45 08             	mov    0x8(%ebp),%eax
  100946:	8a 50 05             	mov    0x5(%eax),%dl
  100949:	83 e2 f0             	and    $0xfffffff0,%edx
  10094c:	83 ca 0e             	or     $0xe,%edx
  10094f:	88 50 05             	mov    %dl,0x5(%eax)
  100952:	8b 45 08             	mov    0x8(%ebp),%eax
  100955:	8a 50 05             	mov    0x5(%eax),%dl
  100958:	83 e2 ef             	and    $0xffffffef,%edx
  10095b:	88 50 05             	mov    %dl,0x5(%eax)
  10095e:	8b 45 14             	mov    0x14(%ebp),%eax
  100961:	88 c2                	mov    %al,%dl
  100963:	83 e2 03             	and    $0x3,%edx
  100966:	8b 45 08             	mov    0x8(%ebp),%eax
  100969:	83 e2 03             	and    $0x3,%edx
  10096c:	88 d1                	mov    %dl,%cl
  10096e:	c1 e1 05             	shl    $0x5,%ecx
  100971:	8a 50 05             	mov    0x5(%eax),%dl
  100974:	83 e2 9f             	and    $0xffffff9f,%edx
  100977:	09 ca                	or     %ecx,%edx
  100979:	88 50 05             	mov    %dl,0x5(%eax)
  10097c:	8b 45 08             	mov    0x8(%ebp),%eax
  10097f:	8a 50 05             	mov    0x5(%eax),%dl
  100982:	83 ca 80             	or     $0xffffff80,%edx
  100985:	88 50 05             	mov    %dl,0x5(%eax)
  100988:	8b 45 10             	mov    0x10(%ebp),%eax
  10098b:	c1 e8 10             	shr    $0x10,%eax
  10098e:	8b 55 08             	mov    0x8(%ebp),%edx
  100991:	66 89 42 06          	mov    %ax,0x6(%edx)
  100995:	90                   	nop
  100996:	5d                   	pop    %ebp
  100997:	c3                   	ret    

00100998 <setTrap>:
  100998:	55                   	push   %ebp
  100999:	89 e5                	mov    %esp,%ebp
  10099b:	e8 a5 fa ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1009a0:	05 60 66 00 00       	add    $0x6660,%eax
  1009a5:	8b 45 10             	mov    0x10(%ebp),%eax
  1009a8:	8b 55 08             	mov    0x8(%ebp),%edx
  1009ab:	66 89 02             	mov    %ax,(%edx)
  1009ae:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009b1:	c1 e0 03             	shl    $0x3,%eax
  1009b4:	8b 55 08             	mov    0x8(%ebp),%edx
  1009b7:	66 89 42 02          	mov    %ax,0x2(%edx)
  1009bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1009be:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1009c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009c5:	8a 50 05             	mov    0x5(%eax),%dl
  1009c8:	83 ca 0f             	or     $0xf,%edx
  1009cb:	88 50 05             	mov    %dl,0x5(%eax)
  1009ce:	8b 45 08             	mov    0x8(%ebp),%eax
  1009d1:	8a 50 05             	mov    0x5(%eax),%dl
  1009d4:	83 e2 ef             	and    $0xffffffef,%edx
  1009d7:	88 50 05             	mov    %dl,0x5(%eax)
  1009da:	8b 45 14             	mov    0x14(%ebp),%eax
  1009dd:	88 c2                	mov    %al,%dl
  1009df:	83 e2 03             	and    $0x3,%edx
  1009e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009e5:	83 e2 03             	and    $0x3,%edx
  1009e8:	88 d1                	mov    %dl,%cl
  1009ea:	c1 e1 05             	shl    $0x5,%ecx
  1009ed:	8a 50 05             	mov    0x5(%eax),%dl
  1009f0:	83 e2 9f             	and    $0xffffff9f,%edx
  1009f3:	09 ca                	or     %ecx,%edx
  1009f5:	88 50 05             	mov    %dl,0x5(%eax)
  1009f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1009fb:	8a 50 05             	mov    0x5(%eax),%dl
  1009fe:	83 ca 80             	or     $0xffffff80,%edx
  100a01:	88 50 05             	mov    %dl,0x5(%eax)
  100a04:	8b 45 10             	mov    0x10(%ebp),%eax
  100a07:	c1 e8 10             	shr    $0x10,%eax
  100a0a:	8b 55 08             	mov    0x8(%ebp),%edx
  100a0d:	66 89 42 06          	mov    %ax,0x6(%edx)
  100a11:	90                   	nop
  100a12:	5d                   	pop    %ebp
  100a13:	c3                   	ret    

00100a14 <initIdt>:
  100a14:	55                   	push   %ebp
  100a15:	89 e5                	mov    %esp,%ebp
  100a17:	53                   	push   %ebx
  100a18:	83 ec 10             	sub    $0x10,%esp
  100a1b:	e8 15 fe ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100a20:	81 c3 e0 65 00 00    	add    $0x65e0,%ebx
  100a26:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100a2d:	eb 2b                	jmp    100a5a <initIdt+0x46>
  100a2f:	c7 c0 89 49 10 00    	mov    $0x104989,%eax
  100a35:	89 c2                	mov    %eax,%edx
  100a37:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a3a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100a41:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100a47:	01 c8                	add    %ecx,%eax
  100a49:	6a 00                	push   $0x0
  100a4b:	52                   	push   %edx
  100a4c:	6a 01                	push   $0x1
  100a4e:	50                   	push   %eax
  100a4f:	e8 44 ff ff ff       	call   100998 <setTrap>
  100a54:	83 c4 10             	add    $0x10,%esp
  100a57:	ff 45 f8             	incl   -0x8(%ebp)
  100a5a:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
  100a61:	7e cc                	jle    100a2f <initIdt+0x1b>
  100a63:	c7 c0 93 49 10 00    	mov    $0x104993,%eax
  100a69:	89 c2                	mov    %eax,%edx
  100a6b:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100a71:	8d 40 40             	lea    0x40(%eax),%eax
  100a74:	6a 00                	push   $0x0
  100a76:	52                   	push   %edx
  100a77:	6a 01                	push   $0x1
  100a79:	50                   	push   %eax
  100a7a:	e8 19 ff ff ff       	call   100998 <setTrap>
  100a7f:	83 c4 10             	add    $0x10,%esp
  100a82:	c7 c0 97 49 10 00    	mov    $0x104997,%eax
  100a88:	89 c2                	mov    %eax,%edx
  100a8a:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100a90:	8d 40 50             	lea    0x50(%eax),%eax
  100a93:	6a 00                	push   $0x0
  100a95:	52                   	push   %edx
  100a96:	6a 01                	push   $0x1
  100a98:	50                   	push   %eax
  100a99:	e8 fa fe ff ff       	call   100998 <setTrap>
  100a9e:	83 c4 10             	add    $0x10,%esp
  100aa1:	c7 c0 9b 49 10 00    	mov    $0x10499b,%eax
  100aa7:	89 c2                	mov    %eax,%edx
  100aa9:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100aaf:	8d 40 58             	lea    0x58(%eax),%eax
  100ab2:	6a 00                	push   $0x0
  100ab4:	52                   	push   %edx
  100ab5:	6a 01                	push   $0x1
  100ab7:	50                   	push   %eax
  100ab8:	e8 db fe ff ff       	call   100998 <setTrap>
  100abd:	83 c4 10             	add    $0x10,%esp
  100ac0:	c7 c0 9f 49 10 00    	mov    $0x10499f,%eax
  100ac6:	89 c2                	mov    %eax,%edx
  100ac8:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100ace:	8d 40 60             	lea    0x60(%eax),%eax
  100ad1:	6a 00                	push   $0x0
  100ad3:	52                   	push   %edx
  100ad4:	6a 01                	push   $0x1
  100ad6:	50                   	push   %eax
  100ad7:	e8 bc fe ff ff       	call   100998 <setTrap>
  100adc:	83 c4 10             	add    $0x10,%esp
  100adf:	c7 c0 a3 49 10 00    	mov    $0x1049a3,%eax
  100ae5:	89 c2                	mov    %eax,%edx
  100ae7:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100aed:	8d 40 68             	lea    0x68(%eax),%eax
  100af0:	6a 00                	push   $0x0
  100af2:	52                   	push   %edx
  100af3:	6a 01                	push   $0x1
  100af5:	50                   	push   %eax
  100af6:	e8 9d fe ff ff       	call   100998 <setTrap>
  100afb:	83 c4 10             	add    $0x10,%esp
  100afe:	c7 c0 a7 49 10 00    	mov    $0x1049a7,%eax
  100b04:	89 c2                	mov    %eax,%edx
  100b06:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b0c:	8d 40 70             	lea    0x70(%eax),%eax
  100b0f:	6a 00                	push   $0x0
  100b11:	52                   	push   %edx
  100b12:	6a 01                	push   $0x1
  100b14:	50                   	push   %eax
  100b15:	e8 7e fe ff ff       	call   100998 <setTrap>
  100b1a:	83 c4 10             	add    $0x10,%esp
  100b1d:	c7 c0 ab 49 10 00    	mov    $0x1049ab,%eax
  100b23:	89 c2                	mov    %eax,%edx
  100b25:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b2b:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  100b31:	6a 00                	push   $0x0
  100b33:	52                   	push   %edx
  100b34:	6a 01                	push   $0x1
  100b36:	50                   	push   %eax
  100b37:	e8 5c fe ff ff       	call   100998 <setTrap>
  100b3c:	83 c4 10             	add    $0x10,%esp
  100b3f:	c7 c0 af 49 10 00    	mov    $0x1049af,%eax
  100b45:	89 c2                	mov    %eax,%edx
  100b47:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b4d:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  100b53:	6a 00                	push   $0x0
  100b55:	52                   	push   %edx
  100b56:	6a 01                	push   $0x1
  100b58:	50                   	push   %eax
  100b59:	e8 3a fe ff ff       	call   100998 <setTrap>
  100b5e:	83 c4 10             	add    $0x10,%esp
  100b61:	c7 c0 b3 49 10 00    	mov    $0x1049b3,%eax
  100b67:	89 c2                	mov    %eax,%edx
  100b69:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b6f:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  100b75:	6a 00                	push   $0x0
  100b77:	52                   	push   %edx
  100b78:	6a 01                	push   $0x1
  100b7a:	50                   	push   %eax
  100b7b:	e8 99 fd ff ff       	call   100919 <setIntr>
  100b80:	83 c4 10             	add    $0x10,%esp
  100b83:	c7 c0 b9 49 10 00    	mov    $0x1049b9,%eax
  100b89:	89 c2                	mov    %eax,%edx
  100b8b:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b91:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  100b97:	6a 00                	push   $0x0
  100b99:	52                   	push   %edx
  100b9a:	6a 01                	push   $0x1
  100b9c:	50                   	push   %eax
  100b9d:	e8 77 fd ff ff       	call   100919 <setIntr>
  100ba2:	83 c4 10             	add    $0x10,%esp
  100ba5:	c7 c0 bf 49 10 00    	mov    $0x1049bf,%eax
  100bab:	89 c2                	mov    %eax,%edx
  100bad:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100bb3:	8d 80 00 04 00 00    	lea    0x400(%eax),%eax
  100bb9:	6a 03                	push   $0x3
  100bbb:	52                   	push   %edx
  100bbc:	6a 01                	push   $0x1
  100bbe:	50                   	push   %eax
  100bbf:	e8 55 fd ff ff       	call   100919 <setIntr>
  100bc4:	83 c4 10             	add    $0x10,%esp
  100bc7:	68 00 08 00 00       	push   $0x800
  100bcc:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100bd2:	50                   	push   %eax
  100bd3:	e8 06 fd ff ff       	call   1008de <saveIdt>
  100bd8:	83 c4 08             	add    $0x8,%esp
  100bdb:	90                   	nop
  100bdc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100bdf:	c9                   	leave  
  100be0:	c3                   	ret    

00100be1 <enableInterrupt>:
  100be1:	55                   	push   %ebp
  100be2:	89 e5                	mov    %esp,%ebp
  100be4:	e8 5c f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100be9:	05 17 64 00 00       	add    $0x6417,%eax
  100bee:	fb                   	sti    
  100bef:	90                   	nop
  100bf0:	5d                   	pop    %ebp
  100bf1:	c3                   	ret    

00100bf2 <disableInterrupt>:
  100bf2:	55                   	push   %ebp
  100bf3:	89 e5                	mov    %esp,%ebp
  100bf5:	e8 4b f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100bfa:	05 06 64 00 00       	add    $0x6406,%eax
  100bff:	fa                   	cli    
  100c00:	90                   	nop
  100c01:	5d                   	pop    %ebp
  100c02:	c3                   	ret    

00100c03 <irqHandle>:
  100c03:	55                   	push   %ebp
  100c04:	89 e5                	mov    %esp,%ebp
  100c06:	56                   	push   %esi
  100c07:	53                   	push   %ebx
  100c08:	83 ec 10             	sub    $0x10,%esp
  100c0b:	e8 25 fc ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100c10:	81 c3 f0 63 00 00    	add    $0x63f0,%ebx
  100c16:	c7 c0 04 72 10 00    	mov    $0x107204,%eax
  100c1c:	8b 10                	mov    (%eax),%edx
  100c1e:	89 d0                	mov    %edx,%eax
  100c20:	01 c0                	add    %eax,%eax
  100c22:	01 d0                	add    %edx,%eax
  100c24:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100c2b:	01 c8                	add    %ecx,%eax
  100c2d:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100c34:	01 c8                	add    %ecx,%eax
  100c36:	01 c0                	add    %eax,%eax
  100c38:	01 d0                	add    %edx,%eax
  100c3a:	c1 e0 02             	shl    $0x2,%eax
  100c3d:	01 d0                	add    %edx,%eax
  100c3f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100c46:	01 c8                	add    %ecx,%eax
  100c48:	c1 e0 02             	shl    $0x2,%eax
  100c4b:	01 d0                	add    %edx,%eax
  100c4d:	c1 e0 02             	shl    $0x2,%eax
  100c50:	01 d0                	add    %edx,%eax
  100c52:	01 c0                	add    %eax,%eax
  100c54:	01 d0                	add    %edx,%eax
  100c56:	c1 e0 03             	shl    $0x3,%eax
  100c59:	01 d0                	add    %edx,%eax
  100c5b:	c1 e0 02             	shl    $0x2,%eax
  100c5e:	01 d0                	add    %edx,%eax
  100c60:	01 c0                	add    %eax,%eax
  100c62:	01 c2                	add    %eax,%edx
  100c64:	c7 c0 04 72 10 00    	mov    $0x107204,%eax
  100c6a:	89 10                	mov    %edx,(%eax)
  100c6c:	c7 c0 04 72 10 00    	mov    $0x107204,%eax
  100c72:	8b 00                	mov    (%eax),%eax
  100c74:	8d 90 b2 aa ac 0f    	lea    0xfacaab2(%eax),%edx
  100c7a:	c7 c0 04 72 10 00    	mov    $0x107204,%eax
  100c80:	89 10                	mov    %edx,(%eax)
  100c82:	b8 10 00 00 00       	mov    $0x10,%eax
  100c87:	8e d8                	mov    %eax,%ds
  100c89:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100c8f:	8b 10                	mov    (%eax),%edx
  100c91:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  100c97:	89 d0                	mov    %edx,%eax
  100c99:	01 c0                	add    %eax,%eax
  100c9b:	01 d0                	add    %edx,%eax
  100c9d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ca4:	01 d0                	add    %edx,%eax
  100ca6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100cad:	01 d0                	add    %edx,%eax
  100caf:	89 c2                	mov    %eax,%edx
  100cb1:	c1 e2 04             	shl    $0x4,%edx
  100cb4:	01 d0                	add    %edx,%eax
  100cb6:	c1 e0 02             	shl    $0x2,%eax
  100cb9:	01 c8                	add    %ecx,%eax
  100cbb:	05 4c 40 00 00       	add    $0x404c,%eax
  100cc0:	8b 00                	mov    (%eax),%eax
  100cc2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100cc5:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100ccb:	8b 10                	mov    (%eax),%edx
  100ccd:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100cd3:	8b 08                	mov    (%eax),%ecx
  100cd5:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  100cdb:	89 d0                	mov    %edx,%eax
  100cdd:	01 c0                	add    %eax,%eax
  100cdf:	01 d0                	add    %edx,%eax
  100ce1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ce8:	01 d0                	add    %edx,%eax
  100cea:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100cf1:	01 d0                	add    %edx,%eax
  100cf3:	89 c2                	mov    %eax,%edx
  100cf5:	c1 e2 04             	shl    $0x4,%edx
  100cf8:	01 d0                	add    %edx,%eax
  100cfa:	c1 e0 02             	shl    $0x2,%eax
  100cfd:	01 f0                	add    %esi,%eax
  100cff:	05 4c 40 00 00       	add    $0x404c,%eax
  100d04:	8b 10                	mov    (%eax),%edx
  100d06:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  100d0c:	89 c8                	mov    %ecx,%eax
  100d0e:	01 c0                	add    %eax,%eax
  100d10:	01 c8                	add    %ecx,%eax
  100d12:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100d19:	01 c8                	add    %ecx,%eax
  100d1b:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100d22:	01 c8                	add    %ecx,%eax
  100d24:	89 c1                	mov    %eax,%ecx
  100d26:	c1 e1 04             	shl    $0x4,%ecx
  100d29:	01 c8                	add    %ecx,%eax
  100d2b:	c1 e0 02             	shl    $0x2,%eax
  100d2e:	01 f0                	add    %esi,%eax
  100d30:	05 50 40 00 00       	add    $0x4050,%eax
  100d35:	89 10                	mov    %edx,(%eax)
  100d37:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100d3d:	8b 08                	mov    (%eax),%ecx
  100d3f:	8b 55 08             	mov    0x8(%ebp),%edx
  100d42:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  100d48:	89 c8                	mov    %ecx,%eax
  100d4a:	01 c0                	add    %eax,%eax
  100d4c:	01 c8                	add    %ecx,%eax
  100d4e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100d55:	01 c8                	add    %ecx,%eax
  100d57:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100d5e:	01 c8                	add    %ecx,%eax
  100d60:	89 c1                	mov    %eax,%ecx
  100d62:	c1 e1 04             	shl    $0x4,%ecx
  100d65:	01 c8                	add    %ecx,%eax
  100d67:	c1 e0 02             	shl    $0x2,%eax
  100d6a:	01 f0                	add    %esi,%eax
  100d6c:	05 4c 40 00 00       	add    $0x404c,%eax
  100d71:	89 10                	mov    %edx,(%eax)
  100d73:	8b 45 08             	mov    0x8(%ebp),%eax
  100d76:	8b 40 30             	mov    0x30(%eax),%eax
  100d79:	83 f8 21             	cmp    $0x21,%eax
  100d7c:	74 3f                	je     100dbd <irqHandle+0x1ba>
  100d7e:	83 f8 21             	cmp    $0x21,%eax
  100d81:	77 0c                	ja     100d8f <irqHandle+0x18c>
  100d83:	83 f8 0d             	cmp    $0xd,%eax
  100d86:	74 15                	je     100d9d <irqHandle+0x19a>
  100d88:	83 f8 20             	cmp    $0x20,%eax
  100d8b:	74 20                	je     100dad <irqHandle+0x1aa>
  100d8d:	eb 4e                	jmp    100ddd <irqHandle+0x1da>
  100d8f:	3d 80 00 00 00       	cmp    $0x80,%eax
  100d94:	74 37                	je     100dcd <irqHandle+0x1ca>
  100d96:	83 f8 ff             	cmp    $0xffffffff,%eax
  100d99:	74 58                	je     100df3 <irqHandle+0x1f0>
  100d9b:	eb 40                	jmp    100ddd <irqHandle+0x1da>
  100d9d:	83 ec 0c             	sub    $0xc,%esp
  100da0:	ff 75 08             	pushl  0x8(%ebp)
  100da3:	e8 87 21 00 00       	call   102f2f <GProtectFaultHandle>
  100da8:	83 c4 10             	add    $0x10,%esp
  100dab:	eb 47                	jmp    100df4 <irqHandle+0x1f1>
  100dad:	83 ec 0c             	sub    $0xc,%esp
  100db0:	ff 75 08             	pushl  0x8(%ebp)
  100db3:	e8 73 01 00 00       	call   100f2b <timerHandle>
  100db8:	83 c4 10             	add    $0x10,%esp
  100dbb:	eb 37                	jmp    100df4 <irqHandle+0x1f1>
  100dbd:	83 ec 0c             	sub    $0xc,%esp
  100dc0:	ff 75 08             	pushl  0x8(%ebp)
  100dc3:	e8 b2 06 00 00       	call   10147a <keyboardHandle>
  100dc8:	83 c4 10             	add    $0x10,%esp
  100dcb:	eb 27                	jmp    100df4 <irqHandle+0x1f1>
  100dcd:	83 ec 0c             	sub    $0xc,%esp
  100dd0:	ff 75 08             	pushl  0x8(%ebp)
  100dd3:	e8 61 00 00 00       	call   100e39 <syscallHandle>
  100dd8:	83 c4 10             	add    $0x10,%esp
  100ddb:	eb 17                	jmp    100df4 <irqHandle+0x1f1>
  100ddd:	83 ec 08             	sub    $0x8,%esp
  100de0:	6a 73                	push   $0x73
  100de2:	8d 83 e6 d9 ff ff    	lea    -0x261a(%ebx),%eax
  100de8:	50                   	push   %eax
  100de9:	e8 c9 38 00 00       	call   1046b7 <abort>
  100dee:	83 c4 10             	add    $0x10,%esp
  100df1:	eb 01                	jmp    100df4 <irqHandle+0x1f1>
  100df3:	90                   	nop
  100df4:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100dfa:	8b 10                	mov    (%eax),%edx
  100dfc:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  100e02:	89 d0                	mov    %edx,%eax
  100e04:	01 c0                	add    %eax,%eax
  100e06:	01 d0                	add    %edx,%eax
  100e08:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100e0f:	01 d0                	add    %edx,%eax
  100e11:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100e18:	01 d0                	add    %edx,%eax
  100e1a:	89 c2                	mov    %eax,%edx
  100e1c:	c1 e2 04             	shl    $0x4,%edx
  100e1f:	01 d0                	add    %edx,%eax
  100e21:	c1 e0 02             	shl    $0x2,%eax
  100e24:	01 c8                	add    %ecx,%eax
  100e26:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  100e2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e2f:	89 02                	mov    %eax,(%edx)
  100e31:	90                   	nop
  100e32:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100e35:	5b                   	pop    %ebx
  100e36:	5e                   	pop    %esi
  100e37:	5d                   	pop    %ebp
  100e38:	c3                   	ret    

00100e39 <syscallHandle>:
  100e39:	55                   	push   %ebp
  100e3a:	89 e5                	mov    %esp,%ebp
  100e3c:	83 ec 08             	sub    $0x8,%esp
  100e3f:	e8 01 f6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100e44:	05 bc 61 00 00       	add    $0x61bc,%eax
  100e49:	8b 45 08             	mov    0x8(%ebp),%eax
  100e4c:	8b 40 2c             	mov    0x2c(%eax),%eax
  100e4f:	83 f8 04             	cmp    $0x4,%eax
  100e52:	0f 84 91 00 00 00    	je     100ee9 <syscallHandle+0xb0>
  100e58:	83 f8 04             	cmp    $0x4,%eax
  100e5b:	77 19                	ja     100e76 <syscallHandle+0x3d>
  100e5d:	83 f8 01             	cmp    $0x1,%eax
  100e60:	74 57                	je     100eb9 <syscallHandle+0x80>
  100e62:	83 f8 01             	cmp    $0x1,%eax
  100e65:	72 32                	jb     100e99 <syscallHandle+0x60>
  100e67:	83 f8 02             	cmp    $0x2,%eax
  100e6a:	74 5d                	je     100ec9 <syscallHandle+0x90>
  100e6c:	83 f8 03             	cmp    $0x3,%eax
  100e6f:	74 68                	je     100ed9 <syscallHandle+0xa0>
  100e71:	e9 b2 00 00 00       	jmp    100f28 <syscallHandle+0xef>
  100e76:	83 f8 06             	cmp    $0x6,%eax
  100e79:	74 7e                	je     100ef9 <syscallHandle+0xc0>
  100e7b:	83 f8 06             	cmp    $0x6,%eax
  100e7e:	72 29                	jb     100ea9 <syscallHandle+0x70>
  100e80:	83 f8 07             	cmp    $0x7,%eax
  100e83:	0f 84 80 00 00 00    	je     100f09 <syscallHandle+0xd0>
  100e89:	3d ff 00 00 00       	cmp    $0xff,%eax
  100e8e:	0f 84 85 00 00 00    	je     100f19 <syscallHandle+0xe0>
  100e94:	e9 8f 00 00 00       	jmp    100f28 <syscallHandle+0xef>
  100e99:	83 ec 0c             	sub    $0xc,%esp
  100e9c:	ff 75 08             	pushl  0x8(%ebp)
  100e9f:	e8 00 07 00 00       	call   1015a4 <syscallWrite>
  100ea4:	83 c4 10             	add    $0x10,%esp
  100ea7:	eb 7f                	jmp    100f28 <syscallHandle+0xef>
  100ea9:	83 ec 0c             	sub    $0xc,%esp
  100eac:	ff 75 08             	pushl  0x8(%ebp)
  100eaf:	e8 dd 0a 00 00       	call   101991 <syscallRead>
  100eb4:	83 c4 10             	add    $0x10,%esp
  100eb7:	eb 6f                	jmp    100f28 <syscallHandle+0xef>
  100eb9:	83 ec 0c             	sub    $0xc,%esp
  100ebc:	ff 75 08             	pushl  0x8(%ebp)
  100ebf:	e8 8a 0e 00 00       	call   101d4e <syscallFork>
  100ec4:	83 c4 10             	add    $0x10,%esp
  100ec7:	eb 5f                	jmp    100f28 <syscallHandle+0xef>
  100ec9:	83 ec 0c             	sub    $0xc,%esp
  100ecc:	ff 75 08             	pushl  0x8(%ebp)
  100ecf:	e8 ef 19 00 00       	call   1028c3 <syscallExec>
  100ed4:	83 c4 10             	add    $0x10,%esp
  100ed7:	eb 4f                	jmp    100f28 <syscallHandle+0xef>
  100ed9:	83 ec 0c             	sub    $0xc,%esp
  100edc:	ff 75 08             	pushl  0x8(%ebp)
  100edf:	e8 bb 1a 00 00       	call   10299f <syscallSleep>
  100ee4:	83 c4 10             	add    $0x10,%esp
  100ee7:	eb 3f                	jmp    100f28 <syscallHandle+0xef>
  100ee9:	83 ec 0c             	sub    $0xc,%esp
  100eec:	ff 75 08             	pushl  0x8(%ebp)
  100eef:	e8 4d 1b 00 00       	call   102a41 <syscallExit>
  100ef4:	83 c4 10             	add    $0x10,%esp
  100ef7:	eb 2f                	jmp    100f28 <syscallHandle+0xef>
  100ef9:	83 ec 0c             	sub    $0xc,%esp
  100efc:	ff 75 08             	pushl  0x8(%ebp)
  100eff:	e8 8c 1b 00 00       	call   102a90 <syscallSem>
  100f04:	83 c4 10             	add    $0x10,%esp
  100f07:	eb 1f                	jmp    100f28 <syscallHandle+0xef>
  100f09:	83 ec 0c             	sub    $0xc,%esp
  100f0c:	ff 75 08             	pushl  0x8(%ebp)
  100f0f:	e8 c8 1f 00 00       	call   102edc <syscallGetPid>
  100f14:	83 c4 10             	add    $0x10,%esp
  100f17:	eb 0f                	jmp    100f28 <syscallHandle+0xef>
  100f19:	83 ec 0c             	sub    $0xc,%esp
  100f1c:	ff 75 08             	pushl  0x8(%ebp)
  100f1f:	e8 3b 20 00 00       	call   102f5f <syscallGetRandom>
  100f24:	83 c4 10             	add    $0x10,%esp
  100f27:	90                   	nop
  100f28:	90                   	nop
  100f29:	c9                   	leave  
  100f2a:	c3                   	ret    

00100f2b <timerHandle>:
  100f2b:	55                   	push   %ebp
  100f2c:	89 e5                	mov    %esp,%ebp
  100f2e:	56                   	push   %esi
  100f2f:	53                   	push   %ebx
  100f30:	83 ec 10             	sub    $0x10,%esp
  100f33:	e8 49 20 00 00       	call   102f81 <__x86.get_pc_thunk.cx>
  100f38:	81 c1 c8 60 00 00    	add    $0x60c8,%ecx
  100f3e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100f44:	8b 00                	mov    (%eax),%eax
  100f46:	40                   	inc    %eax
  100f47:	bb 09 00 00 00       	mov    $0x9,%ebx
  100f4c:	99                   	cltd   
  100f4d:	f7 fb                	idiv   %ebx
  100f4f:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100f52:	e9 27 01 00 00       	jmp    10107e <timerHandle+0x153>
  100f57:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  100f5d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f60:	89 d0                	mov    %edx,%eax
  100f62:	01 c0                	add    %eax,%eax
  100f64:	01 d0                	add    %edx,%eax
  100f66:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f6d:	01 d0                	add    %edx,%eax
  100f6f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f76:	01 d0                	add    %edx,%eax
  100f78:	89 c2                	mov    %eax,%edx
  100f7a:	c1 e2 04             	shl    $0x4,%edx
  100f7d:	01 d0                	add    %edx,%eax
  100f7f:	c1 e0 02             	shl    $0x2,%eax
  100f82:	01 d8                	add    %ebx,%eax
  100f84:	05 54 40 00 00       	add    $0x4054,%eax
  100f89:	8b 00                	mov    (%eax),%eax
  100f8b:	83 f8 02             	cmp    $0x2,%eax
  100f8e:	0f 85 db 00 00 00    	jne    10106f <timerHandle+0x144>
  100f94:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  100f9a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f9d:	89 d0                	mov    %edx,%eax
  100f9f:	01 c0                	add    %eax,%eax
  100fa1:	01 d0                	add    %edx,%eax
  100fa3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100faa:	01 d0                	add    %edx,%eax
  100fac:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fb3:	01 d0                	add    %edx,%eax
  100fb5:	89 c2                	mov    %eax,%edx
  100fb7:	c1 e2 04             	shl    $0x4,%edx
  100fba:	01 d0                	add    %edx,%eax
  100fbc:	c1 e0 02             	shl    $0x2,%eax
  100fbf:	01 d8                	add    %ebx,%eax
  100fc1:	05 5c 40 00 00       	add    $0x405c,%eax
  100fc6:	8b 00                	mov    (%eax),%eax
  100fc8:	8d 58 ff             	lea    -0x1(%eax),%ebx
  100fcb:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  100fd1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100fd4:	89 d0                	mov    %edx,%eax
  100fd6:	01 c0                	add    %eax,%eax
  100fd8:	01 d0                	add    %edx,%eax
  100fda:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fe1:	01 d0                	add    %edx,%eax
  100fe3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fea:	01 d0                	add    %edx,%eax
  100fec:	89 c2                	mov    %eax,%edx
  100fee:	c1 e2 04             	shl    $0x4,%edx
  100ff1:	01 d0                	add    %edx,%eax
  100ff3:	c1 e0 02             	shl    $0x2,%eax
  100ff6:	01 f0                	add    %esi,%eax
  100ff8:	05 5c 40 00 00       	add    $0x405c,%eax
  100ffd:	89 18                	mov    %ebx,(%eax)
  100fff:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101005:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101008:	89 d0                	mov    %edx,%eax
  10100a:	01 c0                	add    %eax,%eax
  10100c:	01 d0                	add    %edx,%eax
  10100e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101015:	01 d0                	add    %edx,%eax
  101017:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10101e:	01 d0                	add    %edx,%eax
  101020:	89 c2                	mov    %eax,%edx
  101022:	c1 e2 04             	shl    $0x4,%edx
  101025:	01 d0                	add    %edx,%eax
  101027:	c1 e0 02             	shl    $0x2,%eax
  10102a:	01 d8                	add    %ebx,%eax
  10102c:	05 5c 40 00 00       	add    $0x405c,%eax
  101031:	8b 00                	mov    (%eax),%eax
  101033:	85 c0                	test   %eax,%eax
  101035:	75 38                	jne    10106f <timerHandle+0x144>
  101037:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  10103d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101040:	89 d0                	mov    %edx,%eax
  101042:	01 c0                	add    %eax,%eax
  101044:	01 d0                	add    %edx,%eax
  101046:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10104d:	01 d0                	add    %edx,%eax
  10104f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101056:	01 d0                	add    %edx,%eax
  101058:	89 c2                	mov    %eax,%edx
  10105a:	c1 e2 04             	shl    $0x4,%edx
  10105d:	01 d0                	add    %edx,%eax
  10105f:	c1 e0 02             	shl    $0x2,%eax
  101062:	01 d8                	add    %ebx,%eax
  101064:	05 54 40 00 00       	add    $0x4054,%eax
  101069:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10106f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101072:	40                   	inc    %eax
  101073:	bb 09 00 00 00       	mov    $0x9,%ebx
  101078:	99                   	cltd   
  101079:	f7 fb                	idiv   %ebx
  10107b:	89 55 f4             	mov    %edx,-0xc(%ebp)
  10107e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101084:	8b 00                	mov    (%eax),%eax
  101086:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  101089:	0f 85 c8 fe ff ff    	jne    100f57 <timerHandle+0x2c>
  10108f:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101095:	8b 10                	mov    (%eax),%edx
  101097:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  10109d:	89 d0                	mov    %edx,%eax
  10109f:	01 c0                	add    %eax,%eax
  1010a1:	01 d0                	add    %edx,%eax
  1010a3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010aa:	01 d0                	add    %edx,%eax
  1010ac:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010b3:	01 d0                	add    %edx,%eax
  1010b5:	89 c2                	mov    %eax,%edx
  1010b7:	c1 e2 04             	shl    $0x4,%edx
  1010ba:	01 d0                	add    %edx,%eax
  1010bc:	c1 e0 02             	shl    $0x2,%eax
  1010bf:	01 d8                	add    %ebx,%eax
  1010c1:	05 54 40 00 00       	add    $0x4054,%eax
  1010c6:	8b 00                	mov    (%eax),%eax
  1010c8:	83 f8 01             	cmp    $0x1,%eax
  1010cb:	0f 85 b0 00 00 00    	jne    101181 <timerHandle+0x256>
  1010d1:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1010d7:	8b 10                	mov    (%eax),%edx
  1010d9:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  1010df:	89 d0                	mov    %edx,%eax
  1010e1:	01 c0                	add    %eax,%eax
  1010e3:	01 d0                	add    %edx,%eax
  1010e5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010ec:	01 d0                	add    %edx,%eax
  1010ee:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010f5:	01 d0                	add    %edx,%eax
  1010f7:	89 c2                	mov    %eax,%edx
  1010f9:	c1 e2 04             	shl    $0x4,%edx
  1010fc:	01 d0                	add    %edx,%eax
  1010fe:	c1 e0 02             	shl    $0x2,%eax
  101101:	01 d8                	add    %ebx,%eax
  101103:	05 58 40 00 00       	add    $0x4058,%eax
  101108:	8b 00                	mov    (%eax),%eax
  10110a:	83 f8 10             	cmp    $0x10,%eax
  10110d:	74 72                	je     101181 <timerHandle+0x256>
  10110f:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101115:	8b 10                	mov    (%eax),%edx
  101117:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  10111d:	89 d0                	mov    %edx,%eax
  10111f:	01 c0                	add    %eax,%eax
  101121:	01 d0                	add    %edx,%eax
  101123:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  10112a:	01 f0                	add    %esi,%eax
  10112c:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  101133:	01 f0                	add    %esi,%eax
  101135:	89 c6                	mov    %eax,%esi
  101137:	c1 e6 04             	shl    $0x4,%esi
  10113a:	01 f0                	add    %esi,%eax
  10113c:	c1 e0 02             	shl    $0x2,%eax
  10113f:	01 d8                	add    %ebx,%eax
  101141:	05 58 40 00 00       	add    $0x4058,%eax
  101146:	8b 00                	mov    (%eax),%eax
  101148:	8d 58 01             	lea    0x1(%eax),%ebx
  10114b:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101151:	89 d0                	mov    %edx,%eax
  101153:	01 c0                	add    %eax,%eax
  101155:	01 d0                	add    %edx,%eax
  101157:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10115e:	01 d0                	add    %edx,%eax
  101160:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101167:	01 d0                	add    %edx,%eax
  101169:	89 c2                	mov    %eax,%edx
  10116b:	c1 e2 04             	shl    $0x4,%edx
  10116e:	01 d0                	add    %edx,%eax
  101170:	c1 e0 02             	shl    $0x2,%eax
  101173:	01 c8                	add    %ecx,%eax
  101175:	05 58 40 00 00       	add    $0x4058,%eax
  10117a:	89 18                	mov    %ebx,(%eax)
  10117c:	e9 f2 02 00 00       	jmp    101473 <timerHandle+0x548>
  101181:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101187:	8b 10                	mov    (%eax),%edx
  101189:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  10118f:	89 d0                	mov    %edx,%eax
  101191:	01 c0                	add    %eax,%eax
  101193:	01 d0                	add    %edx,%eax
  101195:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10119c:	01 d0                	add    %edx,%eax
  10119e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011a5:	01 d0                	add    %edx,%eax
  1011a7:	89 c2                	mov    %eax,%edx
  1011a9:	c1 e2 04             	shl    $0x4,%edx
  1011ac:	01 d0                	add    %edx,%eax
  1011ae:	c1 e0 02             	shl    $0x2,%eax
  1011b1:	01 d8                	add    %ebx,%eax
  1011b3:	05 54 40 00 00       	add    $0x4054,%eax
  1011b8:	8b 00                	mov    (%eax),%eax
  1011ba:	83 f8 01             	cmp    $0x1,%eax
  1011bd:	75 7a                	jne    101239 <timerHandle+0x30e>
  1011bf:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1011c5:	8b 10                	mov    (%eax),%edx
  1011c7:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  1011cd:	89 d0                	mov    %edx,%eax
  1011cf:	01 c0                	add    %eax,%eax
  1011d1:	01 d0                	add    %edx,%eax
  1011d3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011da:	01 d0                	add    %edx,%eax
  1011dc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011e3:	01 d0                	add    %edx,%eax
  1011e5:	89 c2                	mov    %eax,%edx
  1011e7:	c1 e2 04             	shl    $0x4,%edx
  1011ea:	01 d0                	add    %edx,%eax
  1011ec:	c1 e0 02             	shl    $0x2,%eax
  1011ef:	01 d8                	add    %ebx,%eax
  1011f1:	05 54 40 00 00       	add    $0x4054,%eax
  1011f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1011fc:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101202:	8b 10                	mov    (%eax),%edx
  101204:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  10120a:	89 d0                	mov    %edx,%eax
  10120c:	01 c0                	add    %eax,%eax
  10120e:	01 d0                	add    %edx,%eax
  101210:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101217:	01 d0                	add    %edx,%eax
  101219:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101220:	01 d0                	add    %edx,%eax
  101222:	89 c2                	mov    %eax,%edx
  101224:	c1 e2 04             	shl    $0x4,%edx
  101227:	01 d0                	add    %edx,%eax
  101229:	c1 e0 02             	shl    $0x2,%eax
  10122c:	01 d8                	add    %ebx,%eax
  10122e:	05 58 40 00 00       	add    $0x4058,%eax
  101233:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101239:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10123f:	8b 00                	mov    (%eax),%eax
  101241:	40                   	inc    %eax
  101242:	bb 09 00 00 00       	mov    $0x9,%ebx
  101247:	99                   	cltd   
  101248:	f7 fb                	idiv   %ebx
  10124a:	89 55 f4             	mov    %edx,-0xc(%ebp)
  10124d:	eb 4d                	jmp    10129c <timerHandle+0x371>
  10124f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  101253:	74 38                	je     10128d <timerHandle+0x362>
  101255:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  10125b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10125e:	89 d0                	mov    %edx,%eax
  101260:	01 c0                	add    %eax,%eax
  101262:	01 d0                	add    %edx,%eax
  101264:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10126b:	01 d0                	add    %edx,%eax
  10126d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101274:	01 d0                	add    %edx,%eax
  101276:	89 c2                	mov    %eax,%edx
  101278:	c1 e2 04             	shl    $0x4,%edx
  10127b:	01 d0                	add    %edx,%eax
  10127d:	c1 e0 02             	shl    $0x2,%eax
  101280:	01 d8                	add    %ebx,%eax
  101282:	05 54 40 00 00       	add    $0x4054,%eax
  101287:	8b 00                	mov    (%eax),%eax
  101289:	85 c0                	test   %eax,%eax
  10128b:	74 1e                	je     1012ab <timerHandle+0x380>
  10128d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101290:	40                   	inc    %eax
  101291:	bb 09 00 00 00       	mov    $0x9,%ebx
  101296:	99                   	cltd   
  101297:	f7 fb                	idiv   %ebx
  101299:	89 55 f4             	mov    %edx,-0xc(%ebp)
  10129c:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1012a2:	8b 00                	mov    (%eax),%eax
  1012a4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1012a7:	75 a6                	jne    10124f <timerHandle+0x324>
  1012a9:	eb 01                	jmp    1012ac <timerHandle+0x381>
  1012ab:	90                   	nop
  1012ac:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  1012b2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1012b5:	89 d0                	mov    %edx,%eax
  1012b7:	01 c0                	add    %eax,%eax
  1012b9:	01 d0                	add    %edx,%eax
  1012bb:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012c2:	01 d0                	add    %edx,%eax
  1012c4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012cb:	01 d0                	add    %edx,%eax
  1012cd:	89 c2                	mov    %eax,%edx
  1012cf:	c1 e2 04             	shl    $0x4,%edx
  1012d2:	01 d0                	add    %edx,%eax
  1012d4:	c1 e0 02             	shl    $0x2,%eax
  1012d7:	01 d8                	add    %ebx,%eax
  1012d9:	05 54 40 00 00       	add    $0x4054,%eax
  1012de:	8b 00                	mov    (%eax),%eax
  1012e0:	85 c0                	test   %eax,%eax
  1012e2:	74 07                	je     1012eb <timerHandle+0x3c0>
  1012e4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1012eb:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1012f1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1012f4:	89 10                	mov    %edx,(%eax)
  1012f6:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1012fc:	8b 10                	mov    (%eax),%edx
  1012fe:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101304:	89 d0                	mov    %edx,%eax
  101306:	01 c0                	add    %eax,%eax
  101308:	01 d0                	add    %edx,%eax
  10130a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101311:	01 d0                	add    %edx,%eax
  101313:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10131a:	01 d0                	add    %edx,%eax
  10131c:	89 c2                	mov    %eax,%edx
  10131e:	c1 e2 04             	shl    $0x4,%edx
  101321:	01 d0                	add    %edx,%eax
  101323:	c1 e0 02             	shl    $0x2,%eax
  101326:	01 d8                	add    %ebx,%eax
  101328:	05 54 40 00 00       	add    $0x4054,%eax
  10132d:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  101333:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101339:	8b 10                	mov    (%eax),%edx
  10133b:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101341:	89 d0                	mov    %edx,%eax
  101343:	01 c0                	add    %eax,%eax
  101345:	01 d0                	add    %edx,%eax
  101347:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10134e:	01 d0                	add    %edx,%eax
  101350:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101357:	01 d0                	add    %edx,%eax
  101359:	89 c2                	mov    %eax,%edx
  10135b:	c1 e2 04             	shl    $0x4,%edx
  10135e:	01 d0                	add    %edx,%eax
  101360:	c1 e0 02             	shl    $0x2,%eax
  101363:	01 d8                	add    %ebx,%eax
  101365:	05 58 40 00 00       	add    $0x4058,%eax
  10136a:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  101370:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101376:	8b 10                	mov    (%eax),%edx
  101378:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  10137e:	89 d0                	mov    %edx,%eax
  101380:	01 c0                	add    %eax,%eax
  101382:	01 d0                	add    %edx,%eax
  101384:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10138b:	01 d0                	add    %edx,%eax
  10138d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101394:	01 d0                	add    %edx,%eax
  101396:	89 c2                	mov    %eax,%edx
  101398:	c1 e2 04             	shl    $0x4,%edx
  10139b:	01 d0                	add    %edx,%eax
  10139d:	c1 e0 02             	shl    $0x2,%eax
  1013a0:	01 d8                	add    %ebx,%eax
  1013a2:	05 4c 40 00 00       	add    $0x404c,%eax
  1013a7:	8b 00                	mov    (%eax),%eax
  1013a9:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1013ac:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1013b2:	8b 10                	mov    (%eax),%edx
  1013b4:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1013ba:	8b 18                	mov    (%eax),%ebx
  1013bc:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1013c2:	89 d0                	mov    %edx,%eax
  1013c4:	01 c0                	add    %eax,%eax
  1013c6:	01 d0                	add    %edx,%eax
  1013c8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1013cf:	01 d0                	add    %edx,%eax
  1013d1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1013d8:	01 d0                	add    %edx,%eax
  1013da:	89 c2                	mov    %eax,%edx
  1013dc:	c1 e2 04             	shl    $0x4,%edx
  1013df:	01 d0                	add    %edx,%eax
  1013e1:	c1 e0 02             	shl    $0x2,%eax
  1013e4:	01 f0                	add    %esi,%eax
  1013e6:	05 50 40 00 00       	add    $0x4050,%eax
  1013eb:	8b 10                	mov    (%eax),%edx
  1013ed:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1013f3:	89 d8                	mov    %ebx,%eax
  1013f5:	01 c0                	add    %eax,%eax
  1013f7:	01 d8                	add    %ebx,%eax
  1013f9:	8d 1c c5 00 00 00 00 	lea    0x0(,%eax,8),%ebx
  101400:	01 d8                	add    %ebx,%eax
  101402:	8d 1c c5 00 00 00 00 	lea    0x0(,%eax,8),%ebx
  101409:	01 d8                	add    %ebx,%eax
  10140b:	89 c3                	mov    %eax,%ebx
  10140d:	c1 e3 04             	shl    $0x4,%ebx
  101410:	01 d8                	add    %ebx,%eax
  101412:	c1 e0 02             	shl    $0x2,%eax
  101415:	01 f0                	add    %esi,%eax
  101417:	05 4c 40 00 00       	add    $0x404c,%eax
  10141c:	89 10                	mov    %edx,(%eax)
  10141e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101424:	8b 10                	mov    (%eax),%edx
  101426:	89 d0                	mov    %edx,%eax
  101428:	01 c0                	add    %eax,%eax
  10142a:	01 d0                	add    %edx,%eax
  10142c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101433:	01 d0                	add    %edx,%eax
  101435:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10143c:	01 d0                	add    %edx,%eax
  10143e:	89 c2                	mov    %eax,%edx
  101440:	c1 e2 04             	shl    $0x4,%edx
  101443:	01 d0                	add    %edx,%eax
  101445:	c1 e0 02             	shl    $0x2,%eax
  101448:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  10144e:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  101454:	01 d0                	add    %edx,%eax
  101456:	83 c0 0c             	add    $0xc,%eax
  101459:	89 c2                	mov    %eax,%edx
  10145b:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  101461:	89 50 04             	mov    %edx,0x4(%eax)
  101464:	8b 65 f0             	mov    -0x10(%ebp),%esp
  101467:	0f a9                	pop    %gs
  101469:	0f a1                	pop    %fs
  10146b:	07                   	pop    %es
  10146c:	1f                   	pop    %ds
  10146d:	61                   	popa   
  10146e:	83 c4 08             	add    $0x8,%esp
  101471:	cf                   	iret   
  101472:	90                   	nop
  101473:	83 c4 10             	add    $0x10,%esp
  101476:	5b                   	pop    %ebx
  101477:	5e                   	pop    %esi
  101478:	5d                   	pop    %ebp
  101479:	c3                   	ret    

0010147a <keyboardHandle>:
  10147a:	55                   	push   %ebp
  10147b:	89 e5                	mov    %esp,%ebp
  10147d:	53                   	push   %ebx
  10147e:	83 ec 14             	sub    $0x14,%esp
  101481:	e8 af f3 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101486:	81 c3 7a 5b 00 00    	add    $0x5b7a,%ebx
  10148c:	e8 5f 1e 00 00       	call   1032f0 <getKeyCode>
  101491:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101494:	83 ec 0c             	sub    $0xc,%esp
  101497:	ff 75 f4             	pushl  -0xc(%ebp)
  10149a:	e8 f5 1e 00 00       	call   103394 <getChar>
  10149f:	83 c4 10             	add    $0x10,%esp
  1014a2:	88 45 ef             	mov    %al,-0x11(%ebp)
  1014a5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1014a9:	74 07                	je     1014b2 <keyboardHandle+0x38>
  1014ab:	8a 45 ef             	mov    -0x11(%ebp),%al
  1014ae:	84 c0                	test   %al,%al
  1014b0:	75 12                	jne    1014c4 <keyboardHandle+0x4a>
  1014b2:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  1014b8:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  1014bf:	e9 db 00 00 00       	jmp    10159f <keyboardHandle+0x125>
  1014c4:	83 ec 08             	sub    $0x8,%esp
  1014c7:	6a 01                	push   $0x1
  1014c9:	8d 45 ef             	lea    -0x11(%ebp),%eax
  1014cc:	50                   	push   %eax
  1014cd:	e8 35 01 00 00       	call   101607 <WriteStdOut>
  1014d2:	83 c4 10             	add    $0x10,%esp
  1014d5:	c7 c0 60 8a 10 00    	mov    $0x108a60,%eax
  1014db:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1014de:	c7 c0 40 8a 10 00    	mov    $0x108a40,%eax
  1014e4:	8b 00                	mov    (%eax),%eax
  1014e6:	89 c2                	mov    %eax,%edx
  1014e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1014eb:	01 c2                	add    %eax,%edx
  1014ed:	8a 45 ef             	mov    -0x11(%ebp),%al
  1014f0:	88 02                	mov    %al,(%edx)
  1014f2:	c7 c0 40 8a 10 00    	mov    $0x108a40,%eax
  1014f8:	8b 00                	mov    (%eax),%eax
  1014fa:	40                   	inc    %eax
  1014fb:	25 ff 00 00 80       	and    $0x800000ff,%eax
  101500:	85 c0                	test   %eax,%eax
  101502:	79 07                	jns    10150b <keyboardHandle+0x91>
  101504:	48                   	dec    %eax
  101505:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  10150a:	40                   	inc    %eax
  10150b:	89 c2                	mov    %eax,%edx
  10150d:	c7 c0 40 8a 10 00    	mov    $0x108a40,%eax
  101513:	89 10                	mov    %edx,(%eax)
  101515:	8a 45 ef             	mov    -0x11(%ebp),%al
  101518:	3c 0d                	cmp    $0xd,%al
  10151a:	74 07                	je     101523 <keyboardHandle+0xa9>
  10151c:	8a 45 ef             	mov    -0x11(%ebp),%al
  10151f:	3c 0a                	cmp    $0xa,%al
  101521:	75 6c                	jne    10158f <keyboardHandle+0x115>
  101523:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  101529:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
  101530:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  101536:	8b 40 1c             	mov    0x1c(%eax),%eax
  101539:	2d 84 40 00 00       	sub    $0x4084,%eax
  10153e:	89 83 28 01 00 00    	mov    %eax,0x128(%ebx)
  101544:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  10154a:	8b 40 1c             	mov    0x1c(%eax),%eax
  10154d:	8b 50 04             	mov    0x4(%eax),%edx
  101550:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  101556:	89 50 1c             	mov    %edx,0x1c(%eax)
  101559:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  10155f:	8b 40 1c             	mov    0x1c(%eax),%eax
  101562:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101568:	8d 52 18             	lea    0x18(%edx),%edx
  10156b:	89 10                	mov    %edx,(%eax)
  10156d:	8b 83 28 01 00 00    	mov    0x128(%ebx),%eax
  101573:	8b 80 60 40 00 00    	mov    0x4060(%eax),%eax
  101579:	85 c0                	test   %eax,%eax
  10157b:	74 1f                	je     10159c <keyboardHandle+0x122>
  10157d:	8b 83 28 01 00 00    	mov    0x128(%ebx),%eax
  101583:	c7 80 54 40 00 00 00 	movl   $0x0,0x4054(%eax)
  10158a:	00 00 00 
  10158d:	eb 0d                	jmp    10159c <keyboardHandle+0x122>
  10158f:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  101595:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  10159c:	cd 20                	int    $0x20
  10159e:	90                   	nop
  10159f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1015a2:	c9                   	leave  
  1015a3:	c3                   	ret    

001015a4 <syscallWrite>:
  1015a4:	55                   	push   %ebp
  1015a5:	89 e5                	mov    %esp,%ebp
  1015a7:	83 ec 08             	sub    $0x8,%esp
  1015aa:	e8 96 ee ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1015af:	05 51 5a 00 00       	add    $0x5a51,%eax
  1015b4:	8b 55 08             	mov    0x8(%ebp),%edx
  1015b7:	8b 52 28             	mov    0x28(%edx),%edx
  1015ba:	85 d2                	test   %edx,%edx
  1015bc:	74 07                	je     1015c5 <syscallWrite+0x21>
  1015be:	83 fa 03             	cmp    $0x3,%edx
  1015c1:	74 1f                	je     1015e2 <syscallWrite+0x3e>
  1015c3:	eb 3f                	jmp    101604 <syscallWrite+0x60>
  1015c5:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  1015cb:	8b 00                	mov    (%eax),%eax
  1015cd:	83 f8 01             	cmp    $0x1,%eax
  1015d0:	75 2e                	jne    101600 <syscallWrite+0x5c>
  1015d2:	83 ec 0c             	sub    $0xc,%esp
  1015d5:	ff 75 08             	pushl  0x8(%ebp)
  1015d8:	e8 9f 01 00 00       	call   10177c <syscallWriteStdOut>
  1015dd:	83 c4 10             	add    $0x10,%esp
  1015e0:	eb 1e                	jmp    101600 <syscallWrite+0x5c>
  1015e2:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  1015e8:	8b 40 30             	mov    0x30(%eax),%eax
  1015eb:	83 f8 01             	cmp    $0x1,%eax
  1015ee:	75 13                	jne    101603 <syscallWrite+0x5f>
  1015f0:	83 ec 0c             	sub    $0xc,%esp
  1015f3:	ff 75 08             	pushl  0x8(%ebp)
  1015f6:	e8 14 03 00 00       	call   10190f <syscallWriteShMem>
  1015fb:	83 c4 10             	add    $0x10,%esp
  1015fe:	eb 03                	jmp    101603 <syscallWrite+0x5f>
  101600:	90                   	nop
  101601:	eb 01                	jmp    101604 <syscallWrite+0x60>
  101603:	90                   	nop
  101604:	90                   	nop
  101605:	c9                   	leave  
  101606:	c3                   	ret    

00101607 <WriteStdOut>:
  101607:	55                   	push   %ebp
  101608:	89 e5                	mov    %esp,%ebp
  10160a:	53                   	push   %ebx
  10160b:	83 ec 14             	sub    $0x14,%esp
  10160e:	e8 22 f2 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101613:	81 c3 ed 59 00 00    	add    $0x59ed,%ebx
  101619:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  10161d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  101624:	66 c7 45 ea 00 00    	movw   $0x0,-0x16(%ebp)
  10162a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101631:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101638:	e9 10 01 00 00       	jmp    10174d <WriteStdOut+0x146>
  10163d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101640:	8b 45 08             	mov    0x8(%ebp),%eax
  101643:	01 d0                	add    %edx,%eax
  101645:	8a 00                	mov    (%eax),%al
  101647:	88 45 f3             	mov    %al,-0xd(%ebp)
  10164a:	80 7d f3 0a          	cmpb   $0xa,-0xd(%ebp)
  10164e:	75 52                	jne    1016a2 <WriteStdOut+0x9b>
  101650:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101656:	8b 00                	mov    (%eax),%eax
  101658:	8d 50 01             	lea    0x1(%eax),%edx
  10165b:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101661:	89 10                	mov    %edx,(%eax)
  101663:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  101669:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10166f:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101675:	8b 00                	mov    (%eax),%eax
  101677:	83 f8 19             	cmp    $0x19,%eax
  10167a:	0f 85 ca 00 00 00    	jne    10174a <WriteStdOut+0x143>
  101680:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101686:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  10168c:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  101692:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101698:	e8 ef 2d 00 00       	call   10448c <scrollScreen>
  10169d:	e9 a8 00 00 00       	jmp    10174a <WriteStdOut+0x143>
  1016a2:	66 0f be 45 f3       	movsbw -0xd(%ebp),%ax
  1016a7:	80 cc 0c             	or     $0xc,%ah
  1016aa:	66 89 45 ea          	mov    %ax,-0x16(%ebp)
  1016ae:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1016b4:	8b 10                	mov    (%eax),%edx
  1016b6:	89 d0                	mov    %edx,%eax
  1016b8:	c1 e0 02             	shl    $0x2,%eax
  1016bb:	01 d0                	add    %edx,%eax
  1016bd:	c1 e0 04             	shl    $0x4,%eax
  1016c0:	89 c2                	mov    %eax,%edx
  1016c2:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  1016c8:	8b 00                	mov    (%eax),%eax
  1016ca:	01 d0                	add    %edx,%eax
  1016cc:	01 c0                	add    %eax,%eax
  1016ce:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1016d1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1016d4:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  1016da:	66 8b 45 ea          	mov    -0x16(%ebp),%ax
  1016de:	66 89 02             	mov    %ax,(%edx)
  1016e1:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  1016e7:	8b 00                	mov    (%eax),%eax
  1016e9:	8d 50 01             	lea    0x1(%eax),%edx
  1016ec:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  1016f2:	89 10                	mov    %edx,(%eax)
  1016f4:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  1016fa:	8b 00                	mov    (%eax),%eax
  1016fc:	83 f8 50             	cmp    $0x50,%eax
  1016ff:	75 49                	jne    10174a <WriteStdOut+0x143>
  101701:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101707:	8b 00                	mov    (%eax),%eax
  101709:	8d 50 01             	lea    0x1(%eax),%edx
  10170c:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101712:	89 10                	mov    %edx,(%eax)
  101714:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  10171a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101720:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101726:	8b 00                	mov    (%eax),%eax
  101728:	83 f8 19             	cmp    $0x19,%eax
  10172b:	75 1d                	jne    10174a <WriteStdOut+0x143>
  10172d:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101733:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  101739:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  10173f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101745:	e8 42 2d 00 00       	call   10448c <scrollScreen>
  10174a:	ff 45 f4             	incl   -0xc(%ebp)
  10174d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101750:	3b 45 0c             	cmp    0xc(%ebp),%eax
  101753:	0f 8c e4 fe ff ff    	jl     10163d <WriteStdOut+0x36>
  101759:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  10175f:	8b 10                	mov    (%eax),%edx
  101761:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101767:	8b 00                	mov    (%eax),%eax
  101769:	83 ec 08             	sub    $0x8,%esp
  10176c:	52                   	push   %edx
  10176d:	50                   	push   %eax
  10176e:	e8 a6 2c 00 00       	call   104419 <updateCursor>
  101773:	83 c4 10             	add    $0x10,%esp
  101776:	90                   	nop
  101777:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10177a:	c9                   	leave  
  10177b:	c3                   	ret    

0010177c <syscallWriteStdOut>:
  10177c:	55                   	push   %ebp
  10177d:	89 e5                	mov    %esp,%ebp
  10177f:	53                   	push   %ebx
  101780:	83 ec 24             	sub    $0x24,%esp
  101783:	e8 ad f0 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101788:	81 c3 78 58 00 00    	add    $0x5878,%ebx
  10178e:	8b 45 08             	mov    0x8(%ebp),%eax
  101791:	8b 40 0c             	mov    0xc(%eax),%eax
  101794:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101797:	8b 45 08             	mov    0x8(%ebp),%eax
  10179a:	8b 40 24             	mov    0x24(%eax),%eax
  10179d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1017a0:	8b 45 08             	mov    0x8(%ebp),%eax
  1017a3:	8b 40 20             	mov    0x20(%eax),%eax
  1017a6:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1017a9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1017b0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1017b7:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
  1017bb:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%ebp)
  1017c1:	8e 45 e0             	mov    -0x20(%ebp),%es
  1017c4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1017cb:	e9 10 01 00 00       	jmp    1018e0 <syscallWriteStdOut+0x164>
  1017d0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1017d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1017d6:	01 d0                	add    %edx,%eax
  1017d8:	26 8a 00             	mov    %es:(%eax),%al
  1017db:	88 45 e7             	mov    %al,-0x19(%ebp)
  1017de:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
  1017e2:	75 52                	jne    101836 <syscallWriteStdOut+0xba>
  1017e4:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1017ea:	8b 00                	mov    (%eax),%eax
  1017ec:	8d 50 01             	lea    0x1(%eax),%edx
  1017ef:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1017f5:	89 10                	mov    %edx,(%eax)
  1017f7:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  1017fd:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101803:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101809:	8b 00                	mov    (%eax),%eax
  10180b:	83 f8 19             	cmp    $0x19,%eax
  10180e:	0f 85 c9 00 00 00    	jne    1018dd <syscallWriteStdOut+0x161>
  101814:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  10181a:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  101820:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  101826:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10182c:	e8 5b 2c 00 00       	call   10448c <scrollScreen>
  101831:	e9 a7 00 00 00       	jmp    1018dd <syscallWriteStdOut+0x161>
  101836:	66 0f be 45 e7       	movsbw -0x19(%ebp),%ax
  10183b:	80 cc 0c             	or     $0xc,%ah
  10183e:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  101842:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101848:	8b 10                	mov    (%eax),%edx
  10184a:	89 d0                	mov    %edx,%eax
  10184c:	c1 e0 02             	shl    $0x2,%eax
  10184f:	01 d0                	add    %edx,%eax
  101851:	c1 e0 04             	shl    $0x4,%eax
  101854:	89 c2                	mov    %eax,%edx
  101856:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  10185c:	8b 00                	mov    (%eax),%eax
  10185e:	01 d0                	add    %edx,%eax
  101860:	01 c0                	add    %eax,%eax
  101862:	89 45 e8             	mov    %eax,-0x18(%ebp)
  101865:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101868:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  10186e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101871:	66 89 02             	mov    %ax,(%edx)
  101874:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  10187a:	8b 00                	mov    (%eax),%eax
  10187c:	8d 50 01             	lea    0x1(%eax),%edx
  10187f:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  101885:	89 10                	mov    %edx,(%eax)
  101887:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  10188d:	8b 00                	mov    (%eax),%eax
  10188f:	83 f8 50             	cmp    $0x50,%eax
  101892:	75 49                	jne    1018dd <syscallWriteStdOut+0x161>
  101894:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  10189a:	8b 00                	mov    (%eax),%eax
  10189c:	8d 50 01             	lea    0x1(%eax),%edx
  10189f:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1018a5:	89 10                	mov    %edx,(%eax)
  1018a7:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  1018ad:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1018b3:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1018b9:	8b 00                	mov    (%eax),%eax
  1018bb:	83 f8 19             	cmp    $0x19,%eax
  1018be:	75 1d                	jne    1018dd <syscallWriteStdOut+0x161>
  1018c0:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1018c6:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  1018cc:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  1018d2:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1018d8:	e8 af 2b 00 00       	call   10448c <scrollScreen>
  1018dd:	ff 45 f4             	incl   -0xc(%ebp)
  1018e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1018e3:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  1018e6:	0f 8c e4 fe ff ff    	jl     1017d0 <syscallWriteStdOut+0x54>
  1018ec:	c7 c0 14 72 10 00    	mov    $0x107214,%eax
  1018f2:	8b 10                	mov    (%eax),%edx
  1018f4:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1018fa:	8b 00                	mov    (%eax),%eax
  1018fc:	83 ec 08             	sub    $0x8,%esp
  1018ff:	52                   	push   %edx
  101900:	50                   	push   %eax
  101901:	e8 13 2b 00 00       	call   104419 <updateCursor>
  101906:	83 c4 10             	add    $0x10,%esp
  101909:	90                   	nop
  10190a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10190d:	c9                   	leave  
  10190e:	c3                   	ret    

0010190f <syscallWriteShMem>:
  10190f:	55                   	push   %ebp
  101910:	89 e5                	mov    %esp,%ebp
  101912:	53                   	push   %ebx
  101913:	83 ec 20             	sub    $0x20,%esp
  101916:	e8 62 16 00 00       	call   102f7d <__x86.get_pc_thunk.dx>
  10191b:	81 c2 e5 56 00 00    	add    $0x56e5,%edx
  101921:	8b 45 08             	mov    0x8(%ebp),%eax
  101924:	8b 40 0c             	mov    0xc(%eax),%eax
  101927:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10192a:	8b 45 08             	mov    0x8(%ebp),%eax
  10192d:	8b 40 24             	mov    0x24(%eax),%eax
  101930:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101933:	8b 45 08             	mov    0x8(%ebp),%eax
  101936:	8b 40 20             	mov    0x20(%eax),%eax
  101939:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10193c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101943:	8b 45 08             	mov    0x8(%ebp),%eax
  101946:	8b 40 14             	mov    0x14(%eax),%eax
  101949:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10194c:	c6 45 eb 00          	movb   $0x0,-0x15(%ebp)
  101950:	8e 45 e4             	mov    -0x1c(%ebp),%es
  101953:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10195a:	eb 26                	jmp    101982 <syscallWriteShMem+0x73>
  10195c:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  10195f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101962:	01 c8                	add    %ecx,%eax
  101964:	26 8a 00             	mov    %es:(%eax),%al
  101967:	88 45 eb             	mov    %al,-0x15(%ebp)
  10196a:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  10196d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101970:	8d 1c 01             	lea    (%ecx,%eax,1),%ebx
  101973:	8a 4d eb             	mov    -0x15(%ebp),%cl
  101976:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  10197c:	88 0c 18             	mov    %cl,(%eax,%ebx,1)
  10197f:	ff 45 f8             	incl   -0x8(%ebp)
  101982:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101985:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  101988:	7c d2                	jl     10195c <syscallWriteShMem+0x4d>
  10198a:	90                   	nop
  10198b:	83 c4 20             	add    $0x20,%esp
  10198e:	5b                   	pop    %ebx
  10198f:	5d                   	pop    %ebp
  101990:	c3                   	ret    

00101991 <syscallRead>:
  101991:	55                   	push   %ebp
  101992:	89 e5                	mov    %esp,%ebp
  101994:	83 ec 08             	sub    $0x8,%esp
  101997:	e8 a9 ea ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10199c:	05 64 56 00 00       	add    $0x5664,%eax
  1019a1:	8b 55 08             	mov    0x8(%ebp),%edx
  1019a4:	8b 52 28             	mov    0x28(%edx),%edx
  1019a7:	83 fa 01             	cmp    $0x1,%edx
  1019aa:	74 07                	je     1019b3 <syscallRead+0x22>
  1019ac:	83 fa 03             	cmp    $0x3,%edx
  1019af:	74 20                	je     1019d1 <syscallRead+0x40>
  1019b1:	eb 40                	jmp    1019f3 <syscallRead+0x62>
  1019b3:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  1019b9:	8b 40 10             	mov    0x10(%eax),%eax
  1019bc:	83 f8 01             	cmp    $0x1,%eax
  1019bf:	75 2e                	jne    1019ef <syscallRead+0x5e>
  1019c1:	83 ec 0c             	sub    $0xc,%esp
  1019c4:	ff 75 08             	pushl  0x8(%ebp)
  1019c7:	e8 2a 00 00 00       	call   1019f6 <syscallReadStdIn>
  1019cc:	83 c4 10             	add    $0x10,%esp
  1019cf:	eb 1e                	jmp    1019ef <syscallRead+0x5e>
  1019d1:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  1019d7:	8b 40 30             	mov    0x30(%eax),%eax
  1019da:	83 f8 01             	cmp    $0x1,%eax
  1019dd:	75 13                	jne    1019f2 <syscallRead+0x61>
  1019df:	83 ec 0c             	sub    $0xc,%esp
  1019e2:	ff 75 08             	pushl  0x8(%ebp)
  1019e5:	e8 f4 02 00 00       	call   101cde <syscallReadShMem>
  1019ea:	83 c4 10             	add    $0x10,%esp
  1019ed:	eb 03                	jmp    1019f2 <syscallRead+0x61>
  1019ef:	90                   	nop
  1019f0:	eb 01                	jmp    1019f3 <syscallRead+0x62>
  1019f2:	90                   	nop
  1019f3:	90                   	nop
  1019f4:	c9                   	leave  
  1019f5:	c3                   	ret    

001019f6 <syscallReadStdIn>:
  1019f6:	55                   	push   %ebp
  1019f7:	89 e5                	mov    %esp,%ebp
  1019f9:	56                   	push   %esi
  1019fa:	53                   	push   %ebx
  1019fb:	83 ec 20             	sub    $0x20,%esp
  1019fe:	e8 42 ea ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101a03:	05 fd 55 00 00       	add    $0x55fd,%eax
  101a08:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101a0e:	8b 52 14             	mov    0x14(%edx),%edx
  101a11:	85 d2                	test   %edx,%edx
  101a13:	0f 85 e9 01 00 00    	jne    101c02 <syscallReadStdIn+0x20c>
  101a19:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101a1f:	8b 52 10             	mov    0x10(%edx),%edx
  101a22:	85 d2                	test   %edx,%edx
  101a24:	75 0f                	jne    101a35 <syscallReadStdIn+0x3f>
  101a26:	8b 45 08             	mov    0x8(%ebp),%eax
  101a29:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  101a30:	e9 a2 02 00 00       	jmp    101cd7 <syscallReadStdIn+0x2e1>
  101a35:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101a3b:	8b 0a                	mov    (%edx),%ecx
  101a3d:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101a43:	89 ca                	mov    %ecx,%edx
  101a45:	01 d2                	add    %edx,%edx
  101a47:	01 ca                	add    %ecx,%edx
  101a49:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101a50:	01 ca                	add    %ecx,%edx
  101a52:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101a59:	01 ca                	add    %ecx,%edx
  101a5b:	89 d1                	mov    %edx,%ecx
  101a5d:	c1 e1 04             	shl    $0x4,%ecx
  101a60:	01 ca                	add    %ecx,%edx
  101a62:	c1 e2 02             	shl    $0x2,%edx
  101a65:	01 da                	add    %ebx,%edx
  101a67:	81 c2 54 40 00 00    	add    $0x4054,%edx
  101a6d:	c7 02 02 00 00 00    	movl   $0x2,(%edx)
  101a73:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101a79:	8b 0a                	mov    (%edx),%ecx
  101a7b:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101a81:	89 ca                	mov    %ecx,%edx
  101a83:	01 d2                	add    %edx,%edx
  101a85:	01 ca                	add    %ecx,%edx
  101a87:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101a8e:	01 ca                	add    %ecx,%edx
  101a90:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101a97:	01 ca                	add    %ecx,%edx
  101a99:	89 d1                	mov    %edx,%ecx
  101a9b:	c1 e1 04             	shl    $0x4,%ecx
  101a9e:	01 ca                	add    %ecx,%edx
  101aa0:	c1 e2 02             	shl    $0x2,%edx
  101aa3:	01 da                	add    %ebx,%edx
  101aa5:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  101aab:	c7 02 ff ff ff ff    	movl   $0xffffffff,(%edx)
  101ab1:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101ab7:	8b 1a                	mov    (%edx),%ebx
  101ab9:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101abf:	8b 4a 18             	mov    0x18(%edx),%ecx
  101ac2:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101ac8:	89 da                	mov    %ebx,%edx
  101aca:	01 d2                	add    %edx,%edx
  101acc:	01 da                	add    %ebx,%edx
  101ace:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101ad5:	01 da                	add    %ebx,%edx
  101ad7:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101ade:	01 da                	add    %ebx,%edx
  101ae0:	89 d3                	mov    %edx,%ebx
  101ae2:	c1 e3 04             	shl    $0x4,%ebx
  101ae5:	01 da                	add    %ebx,%edx
  101ae7:	c1 e2 02             	shl    $0x2,%edx
  101aea:	01 f2                	add    %esi,%edx
  101aec:	81 c2 84 40 00 00    	add    $0x4084,%edx
  101af2:	89 0a                	mov    %ecx,(%edx)
  101af4:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101afa:	8b 0a                	mov    (%edx),%ecx
  101afc:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101b02:	89 ca                	mov    %ecx,%edx
  101b04:	01 d2                	add    %edx,%edx
  101b06:	01 ca                	add    %ecx,%edx
  101b08:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101b0f:	01 ca                	add    %ecx,%edx
  101b11:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101b18:	01 ca                	add    %ecx,%edx
  101b1a:	89 d1                	mov    %edx,%ecx
  101b1c:	c1 e1 04             	shl    $0x4,%ecx
  101b1f:	01 ca                	add    %ecx,%edx
  101b21:	c1 e2 02             	shl    $0x2,%edx
  101b24:	01 da                	add    %ebx,%edx
  101b26:	8d 8a 88 40 00 00    	lea    0x4088(%edx),%ecx
  101b2c:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101b32:	8d 52 18             	lea    0x18(%edx),%edx
  101b35:	89 11                	mov    %edx,(%ecx)
  101b37:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101b3d:	8b 0a                	mov    (%edx),%ecx
  101b3f:	89 ca                	mov    %ecx,%edx
  101b41:	01 d2                	add    %edx,%edx
  101b43:	01 ca                	add    %ecx,%edx
  101b45:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101b4c:	01 ca                	add    %ecx,%edx
  101b4e:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101b55:	01 ca                	add    %ecx,%edx
  101b57:	89 d1                	mov    %edx,%ecx
  101b59:	c1 e1 04             	shl    $0x4,%ecx
  101b5c:	01 ca                	add    %ecx,%edx
  101b5e:	c1 e2 02             	shl    $0x2,%edx
  101b61:	8d 8a 80 40 00 00    	lea    0x4080(%edx),%ecx
  101b67:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  101b6d:	01 ca                	add    %ecx,%edx
  101b6f:	8d 4a 04             	lea    0x4(%edx),%ecx
  101b72:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101b78:	89 4a 18             	mov    %ecx,0x18(%edx)
  101b7b:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101b81:	8b 1a                	mov    (%edx),%ebx
  101b83:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101b89:	8b 0a                	mov    (%edx),%ecx
  101b8b:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101b91:	89 ca                	mov    %ecx,%edx
  101b93:	01 d2                	add    %edx,%edx
  101b95:	01 ca                	add    %ecx,%edx
  101b97:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101b9e:	01 ca                	add    %ecx,%edx
  101ba0:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101ba7:	01 ca                	add    %ecx,%edx
  101ba9:	89 d1                	mov    %edx,%ecx
  101bab:	c1 e1 04             	shl    $0x4,%ecx
  101bae:	01 ca                	add    %ecx,%edx
  101bb0:	c1 e2 02             	shl    $0x2,%edx
  101bb3:	01 f2                	add    %esi,%edx
  101bb5:	81 c2 84 40 00 00    	add    $0x4084,%edx
  101bbb:	8b 0a                	mov    (%edx),%ecx
  101bbd:	89 da                	mov    %ebx,%edx
  101bbf:	01 d2                	add    %edx,%edx
  101bc1:	01 da                	add    %ebx,%edx
  101bc3:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101bca:	01 da                	add    %ebx,%edx
  101bcc:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101bd3:	01 da                	add    %ebx,%edx
  101bd5:	89 d3                	mov    %edx,%ebx
  101bd7:	c1 e3 04             	shl    $0x4,%ebx
  101bda:	01 da                	add    %ebx,%edx
  101bdc:	c1 e2 02             	shl    $0x2,%edx
  101bdf:	8d 9a 80 40 00 00    	lea    0x4080(%edx),%ebx
  101be5:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  101beb:	01 da                	add    %ebx,%edx
  101bed:	83 c2 04             	add    $0x4,%edx
  101bf0:	89 51 04             	mov    %edx,0x4(%ecx)
  101bf3:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101bf9:	c7 42 10 00 00 00 00 	movl   $0x0,0x10(%edx)
  101c00:	cd 20                	int    $0x20
  101c02:	8b 55 08             	mov    0x8(%ebp),%edx
  101c05:	8b 52 0c             	mov    0xc(%edx),%edx
  101c08:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  101c0b:	8b 55 08             	mov    0x8(%ebp),%edx
  101c0e:	8b 52 24             	mov    0x24(%edx),%edx
  101c11:	89 55 f0             	mov    %edx,-0x10(%ebp)
  101c14:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101c1b:	eb 48                	jmp    101c65 <syscallReadStdIn+0x26f>
  101c1d:	c7 c2 60 8a 10 00    	mov    $0x108a60,%edx
  101c23:	89 55 ec             	mov    %edx,-0x14(%ebp)
  101c26:	c7 c2 60 8e 10 00    	mov    $0x108e60,%edx
  101c2c:	8b 0a                	mov    (%edx),%ecx
  101c2e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101c31:	01 ca                	add    %ecx,%edx
  101c33:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  101c39:	85 d2                	test   %edx,%edx
  101c3b:	79 08                	jns    101c45 <syscallReadStdIn+0x24f>
  101c3d:	4a                   	dec    %edx
  101c3e:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  101c44:	42                   	inc    %edx
  101c45:	89 d1                	mov    %edx,%ecx
  101c47:	8b 55 ec             	mov    -0x14(%ebp),%edx
  101c4a:	01 ca                	add    %ecx,%edx
  101c4c:	8a 12                	mov    (%edx),%dl
  101c4e:	88 55 eb             	mov    %dl,-0x15(%ebp)
  101c51:	8e 45 e4             	mov    -0x1c(%ebp),%es
  101c54:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101c57:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101c5a:	01 d1                	add    %edx,%ecx
  101c5c:	8a 55 eb             	mov    -0x15(%ebp),%dl
  101c5f:	26 88 11             	mov    %dl,%es:(%ecx)
  101c62:	ff 45 f4             	incl   -0xc(%ebp)
  101c65:	8b 55 08             	mov    0x8(%ebp),%edx
  101c68:	8b 4a 20             	mov    0x20(%edx),%ecx
  101c6b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101c6e:	39 d1                	cmp    %edx,%ecx
  101c70:	76 31                	jbe    101ca3 <syscallReadStdIn+0x2ad>
  101c72:	c7 c2 60 8e 10 00    	mov    $0x108e60,%edx
  101c78:	8b 0a                	mov    (%edx),%ecx
  101c7a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101c7d:	01 ca                	add    %ecx,%edx
  101c7f:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  101c85:	85 d2                	test   %edx,%edx
  101c87:	79 08                	jns    101c91 <syscallReadStdIn+0x29b>
  101c89:	4a                   	dec    %edx
  101c8a:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  101c90:	42                   	inc    %edx
  101c91:	89 d1                	mov    %edx,%ecx
  101c93:	c7 c2 40 8a 10 00    	mov    $0x108a40,%edx
  101c99:	8b 12                	mov    (%edx),%edx
  101c9b:	39 d1                	cmp    %edx,%ecx
  101c9d:	0f 85 7a ff ff ff    	jne    101c1d <syscallReadStdIn+0x227>
  101ca3:	c7 c2 60 8e 10 00    	mov    $0x108e60,%edx
  101ca9:	8b 0a                	mov    (%edx),%ecx
  101cab:	c7 c2 40 8a 10 00    	mov    $0x108a40,%edx
  101cb1:	89 0a                	mov    %ecx,(%edx)
  101cb3:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101cb9:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%edx)
  101cc0:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  101cc6:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  101ccd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101cd0:	8b 45 08             	mov    0x8(%ebp),%eax
  101cd3:	89 50 2c             	mov    %edx,0x2c(%eax)
  101cd6:	90                   	nop
  101cd7:	83 c4 20             	add    $0x20,%esp
  101cda:	5b                   	pop    %ebx
  101cdb:	5e                   	pop    %esi
  101cdc:	5d                   	pop    %ebp
  101cdd:	c3                   	ret    

00101cde <syscallReadShMem>:
  101cde:	55                   	push   %ebp
  101cdf:	89 e5                	mov    %esp,%ebp
  101ce1:	53                   	push   %ebx
  101ce2:	83 ec 20             	sub    $0x20,%esp
  101ce5:	e8 93 12 00 00       	call   102f7d <__x86.get_pc_thunk.dx>
  101cea:	81 c2 16 53 00 00    	add    $0x5316,%edx
  101cf0:	8b 45 08             	mov    0x8(%ebp),%eax
  101cf3:	8b 40 0c             	mov    0xc(%eax),%eax
  101cf6:	89 45 e8             	mov    %eax,-0x18(%ebp)
  101cf9:	8b 45 08             	mov    0x8(%ebp),%eax
  101cfc:	8b 40 24             	mov    0x24(%eax),%eax
  101cff:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101d02:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101d09:	8b 45 08             	mov    0x8(%ebp),%eax
  101d0c:	8b 40 20             	mov    0x20(%eax),%eax
  101d0f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101d12:	8b 45 08             	mov    0x8(%ebp),%eax
  101d15:	8b 40 14             	mov    0x14(%eax),%eax
  101d18:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101d1b:	eb 22                	jmp    101d3f <syscallReadShMem+0x61>
  101d1d:	8e 45 e8             	mov    -0x18(%ebp),%es
  101d20:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  101d23:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101d26:	01 c1                	add    %eax,%ecx
  101d28:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  101d2e:	8a 04 08             	mov    (%eax,%ecx,1),%al
  101d31:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  101d34:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101d37:	01 d9                	add    %ebx,%ecx
  101d39:	26 88 01             	mov    %al,%es:(%ecx)
  101d3c:	ff 45 f8             	incl   -0x8(%ebp)
  101d3f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101d42:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  101d45:	7c d6                	jl     101d1d <syscallReadShMem+0x3f>
  101d47:	90                   	nop
  101d48:	83 c4 20             	add    $0x20,%esp
  101d4b:	5b                   	pop    %ebx
  101d4c:	5d                   	pop    %ebp
  101d4d:	c3                   	ret    

00101d4e <syscallFork>:
  101d4e:	55                   	push   %ebp
  101d4f:	89 e5                	mov    %esp,%ebp
  101d51:	56                   	push   %esi
  101d52:	53                   	push   %ebx
  101d53:	83 ec 10             	sub    $0x10,%esp
  101d56:	e8 da ea ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101d5b:	81 c3 a5 52 00 00    	add    $0x52a5,%ebx
  101d61:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101d68:	eb 3c                	jmp    101da6 <syscallFork+0x58>
  101d6a:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101d70:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101d73:	89 d0                	mov    %edx,%eax
  101d75:	01 c0                	add    %eax,%eax
  101d77:	01 d0                	add    %edx,%eax
  101d79:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d80:	01 d0                	add    %edx,%eax
  101d82:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d89:	01 d0                	add    %edx,%eax
  101d8b:	89 c2                	mov    %eax,%edx
  101d8d:	c1 e2 04             	shl    $0x4,%edx
  101d90:	01 d0                	add    %edx,%eax
  101d92:	c1 e0 02             	shl    $0x2,%eax
  101d95:	01 c8                	add    %ecx,%eax
  101d97:	05 54 40 00 00       	add    $0x4054,%eax
  101d9c:	8b 00                	mov    (%eax),%eax
  101d9e:	83 f8 03             	cmp    $0x3,%eax
  101da1:	74 0b                	je     101dae <syscallFork+0x60>
  101da3:	ff 45 f4             	incl   -0xc(%ebp)
  101da6:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  101daa:	7e be                	jle    101d6a <syscallFork+0x1c>
  101dac:	eb 01                	jmp    101daf <syscallFork+0x61>
  101dae:	90                   	nop
  101daf:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  101db3:	0f 84 c5 0a 00 00    	je     10287e <syscallFork+0xb30>
  101db9:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101dbf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101dc2:	89 d0                	mov    %edx,%eax
  101dc4:	01 c0                	add    %eax,%eax
  101dc6:	01 d0                	add    %edx,%eax
  101dc8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101dcf:	01 d0                	add    %edx,%eax
  101dd1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101dd8:	01 d0                	add    %edx,%eax
  101dda:	89 c2                	mov    %eax,%edx
  101ddc:	c1 e2 04             	shl    $0x4,%edx
  101ddf:	01 d0                	add    %edx,%eax
  101de1:	c1 e0 02             	shl    $0x2,%eax
  101de4:	01 c8                	add    %ecx,%eax
  101de6:	05 54 40 00 00       	add    $0x4054,%eax
  101deb:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  101df1:	e8 eb ed ff ff       	call   100be1 <enableInterrupt>
  101df6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  101dfd:	eb 28                	jmp    101e27 <syscallFork+0xd9>
  101dff:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101e05:	8b 00                	mov    (%eax),%eax
  101e07:	40                   	inc    %eax
  101e08:	c1 e0 14             	shl    $0x14,%eax
  101e0b:	89 c2                	mov    %eax,%edx
  101e0d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101e10:	01 d0                	add    %edx,%eax
  101e12:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e15:	42                   	inc    %edx
  101e16:	89 d1                	mov    %edx,%ecx
  101e18:	c1 e1 14             	shl    $0x14,%ecx
  101e1b:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101e1e:	01 ca                	add    %ecx,%edx
  101e20:	8a 00                	mov    (%eax),%al
  101e22:	88 02                	mov    %al,(%edx)
  101e24:	ff 45 f0             	incl   -0x10(%ebp)
  101e27:	81 7d f0 ff ff 0f 00 	cmpl   $0xfffff,-0x10(%ebp)
  101e2e:	7e cf                	jle    101dff <syscallFork+0xb1>
  101e30:	e8 bd ed ff ff       	call   100bf2 <disableInterrupt>
  101e35:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e38:	89 d0                	mov    %edx,%eax
  101e3a:	01 c0                	add    %eax,%eax
  101e3c:	01 d0                	add    %edx,%eax
  101e3e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e45:	01 d0                	add    %edx,%eax
  101e47:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e4e:	01 d0                	add    %edx,%eax
  101e50:	89 c2                	mov    %eax,%edx
  101e52:	c1 e2 04             	shl    $0x4,%edx
  101e55:	01 d0                	add    %edx,%eax
  101e57:	c1 e0 02             	shl    $0x2,%eax
  101e5a:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101e60:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  101e66:	01 d0                	add    %edx,%eax
  101e68:	83 c0 0c             	add    $0xc,%eax
  101e6b:	89 c6                	mov    %eax,%esi
  101e6d:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101e73:	8b 10                	mov    (%eax),%edx
  101e75:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101e7b:	89 d0                	mov    %edx,%eax
  101e7d:	01 c0                	add    %eax,%eax
  101e7f:	01 d0                	add    %edx,%eax
  101e81:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e88:	01 d0                	add    %edx,%eax
  101e8a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e91:	01 d0                	add    %edx,%eax
  101e93:	89 c2                	mov    %eax,%edx
  101e95:	c1 e2 04             	shl    $0x4,%edx
  101e98:	01 d0                	add    %edx,%eax
  101e9a:	c1 e0 02             	shl    $0x2,%eax
  101e9d:	01 c8                	add    %ecx,%eax
  101e9f:	05 4c 40 00 00       	add    $0x404c,%eax
  101ea4:	8b 08                	mov    (%eax),%ecx
  101ea6:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101eac:	8b 10                	mov    (%eax),%edx
  101eae:	89 d0                	mov    %edx,%eax
  101eb0:	01 c0                	add    %eax,%eax
  101eb2:	01 d0                	add    %edx,%eax
  101eb4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ebb:	01 d0                	add    %edx,%eax
  101ebd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ec4:	01 d0                	add    %edx,%eax
  101ec6:	89 c2                	mov    %eax,%edx
  101ec8:	c1 e2 04             	shl    $0x4,%edx
  101ecb:	01 d0                	add    %edx,%eax
  101ecd:	c1 e0 02             	shl    $0x2,%eax
  101ed0:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101ed6:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  101edc:	01 d0                	add    %edx,%eax
  101ede:	83 c0 0c             	add    $0xc,%eax
  101ee1:	29 c1                	sub    %eax,%ecx
  101ee3:	89 c8                	mov    %ecx,%eax
  101ee5:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101ee8:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101eee:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101ef1:	89 d0                	mov    %edx,%eax
  101ef3:	01 c0                	add    %eax,%eax
  101ef5:	01 d0                	add    %edx,%eax
  101ef7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101efe:	01 d0                	add    %edx,%eax
  101f00:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f07:	01 d0                	add    %edx,%eax
  101f09:	89 c2                	mov    %eax,%edx
  101f0b:	c1 e2 04             	shl    $0x4,%edx
  101f0e:	01 d0                	add    %edx,%eax
  101f10:	c1 e0 02             	shl    $0x2,%eax
  101f13:	01 f0                	add    %esi,%eax
  101f15:	05 4c 40 00 00       	add    $0x404c,%eax
  101f1a:	89 08                	mov    %ecx,(%eax)
  101f1c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101f1f:	89 d0                	mov    %edx,%eax
  101f21:	01 c0                	add    %eax,%eax
  101f23:	01 d0                	add    %edx,%eax
  101f25:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f2c:	01 d0                	add    %edx,%eax
  101f2e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f35:	01 d0                	add    %edx,%eax
  101f37:	89 c2                	mov    %eax,%edx
  101f39:	c1 e2 04             	shl    $0x4,%edx
  101f3c:	01 d0                	add    %edx,%eax
  101f3e:	c1 e0 02             	shl    $0x2,%eax
  101f41:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101f47:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  101f4d:	01 d0                	add    %edx,%eax
  101f4f:	83 c0 0c             	add    $0xc,%eax
  101f52:	89 c6                	mov    %eax,%esi
  101f54:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101f5a:	8b 10                	mov    (%eax),%edx
  101f5c:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101f62:	89 d0                	mov    %edx,%eax
  101f64:	01 c0                	add    %eax,%eax
  101f66:	01 d0                	add    %edx,%eax
  101f68:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f6f:	01 d0                	add    %edx,%eax
  101f71:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f78:	01 d0                	add    %edx,%eax
  101f7a:	89 c2                	mov    %eax,%edx
  101f7c:	c1 e2 04             	shl    $0x4,%edx
  101f7f:	01 d0                	add    %edx,%eax
  101f81:	c1 e0 02             	shl    $0x2,%eax
  101f84:	01 c8                	add    %ecx,%eax
  101f86:	05 50 40 00 00       	add    $0x4050,%eax
  101f8b:	8b 08                	mov    (%eax),%ecx
  101f8d:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101f93:	8b 10                	mov    (%eax),%edx
  101f95:	89 d0                	mov    %edx,%eax
  101f97:	01 c0                	add    %eax,%eax
  101f99:	01 d0                	add    %edx,%eax
  101f9b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fa2:	01 d0                	add    %edx,%eax
  101fa4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fab:	01 d0                	add    %edx,%eax
  101fad:	89 c2                	mov    %eax,%edx
  101faf:	c1 e2 04             	shl    $0x4,%edx
  101fb2:	01 d0                	add    %edx,%eax
  101fb4:	c1 e0 02             	shl    $0x2,%eax
  101fb7:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101fbd:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  101fc3:	01 d0                	add    %edx,%eax
  101fc5:	83 c0 0c             	add    $0xc,%eax
  101fc8:	29 c1                	sub    %eax,%ecx
  101fca:	89 c8                	mov    %ecx,%eax
  101fcc:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101fcf:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101fd5:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101fd8:	89 d0                	mov    %edx,%eax
  101fda:	01 c0                	add    %eax,%eax
  101fdc:	01 d0                	add    %edx,%eax
  101fde:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fe5:	01 d0                	add    %edx,%eax
  101fe7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fee:	01 d0                	add    %edx,%eax
  101ff0:	89 c2                	mov    %eax,%edx
  101ff2:	c1 e2 04             	shl    $0x4,%edx
  101ff5:	01 d0                	add    %edx,%eax
  101ff7:	c1 e0 02             	shl    $0x2,%eax
  101ffa:	01 f0                	add    %esi,%eax
  101ffc:	05 50 40 00 00       	add    $0x4050,%eax
  102001:	89 08                	mov    %ecx,(%eax)
  102003:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102009:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10200c:	89 d0                	mov    %edx,%eax
  10200e:	01 c0                	add    %eax,%eax
  102010:	01 d0                	add    %edx,%eax
  102012:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102019:	01 d0                	add    %edx,%eax
  10201b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102022:	01 d0                	add    %edx,%eax
  102024:	89 c2                	mov    %eax,%edx
  102026:	c1 e2 04             	shl    $0x4,%edx
  102029:	01 d0                	add    %edx,%eax
  10202b:	c1 e0 02             	shl    $0x2,%eax
  10202e:	01 c8                	add    %ecx,%eax
  102030:	05 54 40 00 00       	add    $0x4054,%eax
  102035:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10203b:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102041:	8b 10                	mov    (%eax),%edx
  102043:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102049:	89 d0                	mov    %edx,%eax
  10204b:	01 c0                	add    %eax,%eax
  10204d:	01 d0                	add    %edx,%eax
  10204f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102056:	01 d0                	add    %edx,%eax
  102058:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10205f:	01 d0                	add    %edx,%eax
  102061:	89 c2                	mov    %eax,%edx
  102063:	c1 e2 04             	shl    $0x4,%edx
  102066:	01 d0                	add    %edx,%eax
  102068:	c1 e0 02             	shl    $0x2,%eax
  10206b:	01 c8                	add    %ecx,%eax
  10206d:	05 58 40 00 00       	add    $0x4058,%eax
  102072:	8b 10                	mov    (%eax),%edx
  102074:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10207a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10207d:	89 c8                	mov    %ecx,%eax
  10207f:	01 c0                	add    %eax,%eax
  102081:	01 c8                	add    %ecx,%eax
  102083:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10208a:	01 c8                	add    %ecx,%eax
  10208c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102093:	01 c8                	add    %ecx,%eax
  102095:	89 c1                	mov    %eax,%ecx
  102097:	c1 e1 04             	shl    $0x4,%ecx
  10209a:	01 c8                	add    %ecx,%eax
  10209c:	c1 e0 02             	shl    $0x2,%eax
  10209f:	01 f0                	add    %esi,%eax
  1020a1:	05 58 40 00 00       	add    $0x4058,%eax
  1020a6:	89 10                	mov    %edx,(%eax)
  1020a8:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1020ae:	8b 10                	mov    (%eax),%edx
  1020b0:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1020b6:	89 d0                	mov    %edx,%eax
  1020b8:	01 c0                	add    %eax,%eax
  1020ba:	01 d0                	add    %edx,%eax
  1020bc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1020c3:	01 d0                	add    %edx,%eax
  1020c5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1020cc:	01 d0                	add    %edx,%eax
  1020ce:	89 c2                	mov    %eax,%edx
  1020d0:	c1 e2 04             	shl    $0x4,%edx
  1020d3:	01 d0                	add    %edx,%eax
  1020d5:	c1 e0 02             	shl    $0x2,%eax
  1020d8:	01 c8                	add    %ecx,%eax
  1020da:	05 5c 40 00 00       	add    $0x405c,%eax
  1020df:	8b 10                	mov    (%eax),%edx
  1020e1:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1020e7:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1020ea:	89 c8                	mov    %ecx,%eax
  1020ec:	01 c0                	add    %eax,%eax
  1020ee:	01 c8                	add    %ecx,%eax
  1020f0:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1020f7:	01 c8                	add    %ecx,%eax
  1020f9:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102100:	01 c8                	add    %ecx,%eax
  102102:	89 c1                	mov    %eax,%ecx
  102104:	c1 e1 04             	shl    $0x4,%ecx
  102107:	01 c8                	add    %ecx,%eax
  102109:	c1 e0 02             	shl    $0x2,%eax
  10210c:	01 f0                	add    %esi,%eax
  10210e:	05 5c 40 00 00       	add    $0x405c,%eax
  102113:	89 10                	mov    %edx,(%eax)
  102115:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102118:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10211e:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102121:	89 c8                	mov    %ecx,%eax
  102123:	01 c0                	add    %eax,%eax
  102125:	01 c8                	add    %ecx,%eax
  102127:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10212e:	01 c8                	add    %ecx,%eax
  102130:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102137:	01 c8                	add    %ecx,%eax
  102139:	89 c1                	mov    %eax,%ecx
  10213b:	c1 e1 04             	shl    $0x4,%ecx
  10213e:	01 c8                	add    %ecx,%eax
  102140:	c1 e0 02             	shl    $0x2,%eax
  102143:	01 f0                	add    %esi,%eax
  102145:	05 60 40 00 00       	add    $0x4060,%eax
  10214a:	89 10                	mov    %edx,(%eax)
  10214c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10214f:	40                   	inc    %eax
  102150:	01 c0                	add    %eax,%eax
  102152:	c1 e0 03             	shl    $0x3,%eax
  102155:	83 c8 03             	or     $0x3,%eax
  102158:	89 c1                	mov    %eax,%ecx
  10215a:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102160:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102163:	89 d0                	mov    %edx,%eax
  102165:	01 c0                	add    %eax,%eax
  102167:	01 d0                	add    %edx,%eax
  102169:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102170:	01 d0                	add    %edx,%eax
  102172:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102179:	01 d0                	add    %edx,%eax
  10217b:	89 c2                	mov    %eax,%edx
  10217d:	c1 e2 04             	shl    $0x4,%edx
  102180:	01 d0                	add    %edx,%eax
  102182:	c1 e0 02             	shl    $0x2,%eax
  102185:	01 f0                	add    %esi,%eax
  102187:	05 48 40 00 00       	add    $0x4048,%eax
  10218c:	89 08                	mov    %ecx,(%eax)
  10218e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102194:	8b 10                	mov    (%eax),%edx
  102196:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  10219c:	89 d0                	mov    %edx,%eax
  10219e:	01 c0                	add    %eax,%eax
  1021a0:	01 d0                	add    %edx,%eax
  1021a2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021a9:	01 d0                	add    %edx,%eax
  1021ab:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021b2:	01 d0                	add    %edx,%eax
  1021b4:	89 c2                	mov    %eax,%edx
  1021b6:	c1 e2 04             	shl    $0x4,%edx
  1021b9:	01 d0                	add    %edx,%eax
  1021bb:	c1 e0 02             	shl    $0x2,%eax
  1021be:	01 c8                	add    %ecx,%eax
  1021c0:	05 44 40 00 00       	add    $0x4044,%eax
  1021c5:	8b 10                	mov    (%eax),%edx
  1021c7:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1021cd:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1021d0:	89 c8                	mov    %ecx,%eax
  1021d2:	01 c0                	add    %eax,%eax
  1021d4:	01 c8                	add    %ecx,%eax
  1021d6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021dd:	01 c8                	add    %ecx,%eax
  1021df:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021e6:	01 c8                	add    %ecx,%eax
  1021e8:	89 c1                	mov    %eax,%ecx
  1021ea:	c1 e1 04             	shl    $0x4,%ecx
  1021ed:	01 c8                	add    %ecx,%eax
  1021ef:	c1 e0 02             	shl    $0x2,%eax
  1021f2:	01 f0                	add    %esi,%eax
  1021f4:	05 44 40 00 00       	add    $0x4044,%eax
  1021f9:	89 10                	mov    %edx,(%eax)
  1021fb:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102201:	8b 10                	mov    (%eax),%edx
  102203:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102209:	89 d0                	mov    %edx,%eax
  10220b:	01 c0                	add    %eax,%eax
  10220d:	01 d0                	add    %edx,%eax
  10220f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102216:	01 d0                	add    %edx,%eax
  102218:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10221f:	01 d0                	add    %edx,%eax
  102221:	89 c2                	mov    %eax,%edx
  102223:	c1 e2 04             	shl    $0x4,%edx
  102226:	01 d0                	add    %edx,%eax
  102228:	c1 e0 02             	shl    $0x2,%eax
  10222b:	01 c8                	add    %ecx,%eax
  10222d:	05 40 40 00 00       	add    $0x4040,%eax
  102232:	8b 10                	mov    (%eax),%edx
  102234:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10223a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10223d:	89 c8                	mov    %ecx,%eax
  10223f:	01 c0                	add    %eax,%eax
  102241:	01 c8                	add    %ecx,%eax
  102243:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10224a:	01 c8                	add    %ecx,%eax
  10224c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102253:	01 c8                	add    %ecx,%eax
  102255:	89 c1                	mov    %eax,%ecx
  102257:	c1 e1 04             	shl    $0x4,%ecx
  10225a:	01 c8                	add    %ecx,%eax
  10225c:	c1 e0 02             	shl    $0x2,%eax
  10225f:	01 f0                	add    %esi,%eax
  102261:	05 40 40 00 00       	add    $0x4040,%eax
  102266:	89 10                	mov    %edx,(%eax)
  102268:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10226b:	01 c0                	add    %eax,%eax
  10226d:	40                   	inc    %eax
  10226e:	c1 e0 03             	shl    $0x3,%eax
  102271:	83 c8 03             	or     $0x3,%eax
  102274:	89 c1                	mov    %eax,%ecx
  102276:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10227c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10227f:	89 d0                	mov    %edx,%eax
  102281:	01 c0                	add    %eax,%eax
  102283:	01 d0                	add    %edx,%eax
  102285:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10228c:	01 d0                	add    %edx,%eax
  10228e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102295:	01 d0                	add    %edx,%eax
  102297:	89 c2                	mov    %eax,%edx
  102299:	c1 e2 04             	shl    $0x4,%edx
  10229c:	01 d0                	add    %edx,%eax
  10229e:	c1 e0 02             	shl    $0x2,%eax
  1022a1:	01 f0                	add    %esi,%eax
  1022a3:	05 3c 40 00 00       	add    $0x403c,%eax
  1022a8:	89 08                	mov    %ecx,(%eax)
  1022aa:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1022b0:	8b 10                	mov    (%eax),%edx
  1022b2:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1022b8:	89 d0                	mov    %edx,%eax
  1022ba:	01 c0                	add    %eax,%eax
  1022bc:	01 d0                	add    %edx,%eax
  1022be:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1022c5:	01 d0                	add    %edx,%eax
  1022c7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1022ce:	01 d0                	add    %edx,%eax
  1022d0:	89 c2                	mov    %eax,%edx
  1022d2:	c1 e2 04             	shl    $0x4,%edx
  1022d5:	01 d0                	add    %edx,%eax
  1022d7:	c1 e0 02             	shl    $0x2,%eax
  1022da:	01 c8                	add    %ecx,%eax
  1022dc:	05 38 40 00 00       	add    $0x4038,%eax
  1022e1:	8b 10                	mov    (%eax),%edx
  1022e3:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1022e9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1022ec:	89 c8                	mov    %ecx,%eax
  1022ee:	01 c0                	add    %eax,%eax
  1022f0:	01 c8                	add    %ecx,%eax
  1022f2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1022f9:	01 c8                	add    %ecx,%eax
  1022fb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102302:	01 c8                	add    %ecx,%eax
  102304:	89 c1                	mov    %eax,%ecx
  102306:	c1 e1 04             	shl    $0x4,%ecx
  102309:	01 c8                	add    %ecx,%eax
  10230b:	c1 e0 02             	shl    $0x2,%eax
  10230e:	01 f0                	add    %esi,%eax
  102310:	05 38 40 00 00       	add    $0x4038,%eax
  102315:	89 10                	mov    %edx,(%eax)
  102317:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10231d:	8b 10                	mov    (%eax),%edx
  10231f:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102325:	89 d0                	mov    %edx,%eax
  102327:	01 c0                	add    %eax,%eax
  102329:	01 d0                	add    %edx,%eax
  10232b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102332:	01 d0                	add    %edx,%eax
  102334:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10233b:	01 d0                	add    %edx,%eax
  10233d:	89 c2                	mov    %eax,%edx
  10233f:	c1 e2 04             	shl    $0x4,%edx
  102342:	01 d0                	add    %edx,%eax
  102344:	c1 e0 02             	shl    $0x2,%eax
  102347:	01 c8                	add    %ecx,%eax
  102349:	05 2c 40 00 00       	add    $0x402c,%eax
  10234e:	8b 10                	mov    (%eax),%edx
  102350:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102356:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102359:	89 c8                	mov    %ecx,%eax
  10235b:	01 c0                	add    %eax,%eax
  10235d:	01 c8                	add    %ecx,%eax
  10235f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102366:	01 c8                	add    %ecx,%eax
  102368:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10236f:	01 c8                	add    %ecx,%eax
  102371:	89 c1                	mov    %eax,%ecx
  102373:	c1 e1 04             	shl    $0x4,%ecx
  102376:	01 c8                	add    %ecx,%eax
  102378:	c1 e0 02             	shl    $0x2,%eax
  10237b:	01 f0                	add    %esi,%eax
  10237d:	05 2c 40 00 00       	add    $0x402c,%eax
  102382:	89 10                	mov    %edx,(%eax)
  102384:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10238a:	8b 10                	mov    (%eax),%edx
  10238c:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102392:	89 d0                	mov    %edx,%eax
  102394:	01 c0                	add    %eax,%eax
  102396:	01 d0                	add    %edx,%eax
  102398:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10239f:	01 d0                	add    %edx,%eax
  1023a1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023a8:	01 d0                	add    %edx,%eax
  1023aa:	89 c2                	mov    %eax,%edx
  1023ac:	c1 e2 04             	shl    $0x4,%edx
  1023af:	01 d0                	add    %edx,%eax
  1023b1:	c1 e0 02             	shl    $0x2,%eax
  1023b4:	01 c8                	add    %ecx,%eax
  1023b6:	05 28 40 00 00       	add    $0x4028,%eax
  1023bb:	8b 10                	mov    (%eax),%edx
  1023bd:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1023c3:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1023c6:	89 c8                	mov    %ecx,%eax
  1023c8:	01 c0                	add    %eax,%eax
  1023ca:	01 c8                	add    %ecx,%eax
  1023cc:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1023d3:	01 c8                	add    %ecx,%eax
  1023d5:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1023dc:	01 c8                	add    %ecx,%eax
  1023de:	89 c1                	mov    %eax,%ecx
  1023e0:	c1 e1 04             	shl    $0x4,%ecx
  1023e3:	01 c8                	add    %ecx,%eax
  1023e5:	c1 e0 02             	shl    $0x2,%eax
  1023e8:	01 f0                	add    %esi,%eax
  1023ea:	05 28 40 00 00       	add    $0x4028,%eax
  1023ef:	89 10                	mov    %edx,(%eax)
  1023f1:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1023f7:	8b 10                	mov    (%eax),%edx
  1023f9:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1023ff:	89 d0                	mov    %edx,%eax
  102401:	01 c0                	add    %eax,%eax
  102403:	01 d0                	add    %edx,%eax
  102405:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10240c:	01 d0                	add    %edx,%eax
  10240e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102415:	01 d0                	add    %edx,%eax
  102417:	89 c2                	mov    %eax,%edx
  102419:	c1 e2 04             	shl    $0x4,%edx
  10241c:	01 d0                	add    %edx,%eax
  10241e:	c1 e0 02             	shl    $0x2,%eax
  102421:	01 c8                	add    %ecx,%eax
  102423:	05 24 40 00 00       	add    $0x4024,%eax
  102428:	8b 10                	mov    (%eax),%edx
  10242a:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102430:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102433:	89 c8                	mov    %ecx,%eax
  102435:	01 c0                	add    %eax,%eax
  102437:	01 c8                	add    %ecx,%eax
  102439:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102440:	01 c8                	add    %ecx,%eax
  102442:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102449:	01 c8                	add    %ecx,%eax
  10244b:	89 c1                	mov    %eax,%ecx
  10244d:	c1 e1 04             	shl    $0x4,%ecx
  102450:	01 c8                	add    %ecx,%eax
  102452:	c1 e0 02             	shl    $0x2,%eax
  102455:	01 f0                	add    %esi,%eax
  102457:	05 24 40 00 00       	add    $0x4024,%eax
  10245c:	89 10                	mov    %edx,(%eax)
  10245e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102464:	8b 10                	mov    (%eax),%edx
  102466:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  10246c:	89 d0                	mov    %edx,%eax
  10246e:	01 c0                	add    %eax,%eax
  102470:	01 d0                	add    %edx,%eax
  102472:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102479:	01 d0                	add    %edx,%eax
  10247b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102482:	01 d0                	add    %edx,%eax
  102484:	89 c2                	mov    %eax,%edx
  102486:	c1 e2 04             	shl    $0x4,%edx
  102489:	01 d0                	add    %edx,%eax
  10248b:	c1 e0 02             	shl    $0x2,%eax
  10248e:	01 c8                	add    %ecx,%eax
  102490:	05 20 40 00 00       	add    $0x4020,%eax
  102495:	8b 10                	mov    (%eax),%edx
  102497:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10249d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1024a0:	89 c8                	mov    %ecx,%eax
  1024a2:	01 c0                	add    %eax,%eax
  1024a4:	01 c8                	add    %ecx,%eax
  1024a6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024ad:	01 c8                	add    %ecx,%eax
  1024af:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024b6:	01 c8                	add    %ecx,%eax
  1024b8:	89 c1                	mov    %eax,%ecx
  1024ba:	c1 e1 04             	shl    $0x4,%ecx
  1024bd:	01 c8                	add    %ecx,%eax
  1024bf:	c1 e0 02             	shl    $0x2,%eax
  1024c2:	01 f0                	add    %esi,%eax
  1024c4:	05 20 40 00 00       	add    $0x4020,%eax
  1024c9:	89 10                	mov    %edx,(%eax)
  1024cb:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1024d1:	8b 10                	mov    (%eax),%edx
  1024d3:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1024d9:	89 d0                	mov    %edx,%eax
  1024db:	01 c0                	add    %eax,%eax
  1024dd:	01 d0                	add    %edx,%eax
  1024df:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024e6:	01 d0                	add    %edx,%eax
  1024e8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024ef:	01 d0                	add    %edx,%eax
  1024f1:	89 c2                	mov    %eax,%edx
  1024f3:	c1 e2 04             	shl    $0x4,%edx
  1024f6:	01 d0                	add    %edx,%eax
  1024f8:	c1 e0 02             	shl    $0x2,%eax
  1024fb:	01 c8                	add    %ecx,%eax
  1024fd:	05 1c 40 00 00       	add    $0x401c,%eax
  102502:	8b 10                	mov    (%eax),%edx
  102504:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10250a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10250d:	89 c8                	mov    %ecx,%eax
  10250f:	01 c0                	add    %eax,%eax
  102511:	01 c8                	add    %ecx,%eax
  102513:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10251a:	01 c8                	add    %ecx,%eax
  10251c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102523:	01 c8                	add    %ecx,%eax
  102525:	89 c1                	mov    %eax,%ecx
  102527:	c1 e1 04             	shl    $0x4,%ecx
  10252a:	01 c8                	add    %ecx,%eax
  10252c:	c1 e0 02             	shl    $0x2,%eax
  10252f:	01 f0                	add    %esi,%eax
  102531:	05 1c 40 00 00       	add    $0x401c,%eax
  102536:	89 10                	mov    %edx,(%eax)
  102538:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10253e:	8b 10                	mov    (%eax),%edx
  102540:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102546:	89 d0                	mov    %edx,%eax
  102548:	01 c0                	add    %eax,%eax
  10254a:	01 d0                	add    %edx,%eax
  10254c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102553:	01 d0                	add    %edx,%eax
  102555:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10255c:	01 d0                	add    %edx,%eax
  10255e:	89 c2                	mov    %eax,%edx
  102560:	c1 e2 04             	shl    $0x4,%edx
  102563:	01 d0                	add    %edx,%eax
  102565:	c1 e0 02             	shl    $0x2,%eax
  102568:	01 c8                	add    %ecx,%eax
  10256a:	05 18 40 00 00       	add    $0x4018,%eax
  10256f:	8b 10                	mov    (%eax),%edx
  102571:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102577:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10257a:	89 c8                	mov    %ecx,%eax
  10257c:	01 c0                	add    %eax,%eax
  10257e:	01 c8                	add    %ecx,%eax
  102580:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102587:	01 c8                	add    %ecx,%eax
  102589:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102590:	01 c8                	add    %ecx,%eax
  102592:	89 c1                	mov    %eax,%ecx
  102594:	c1 e1 04             	shl    $0x4,%ecx
  102597:	01 c8                	add    %ecx,%eax
  102599:	c1 e0 02             	shl    $0x2,%eax
  10259c:	01 f0                	add    %esi,%eax
  10259e:	05 18 40 00 00       	add    $0x4018,%eax
  1025a3:	89 10                	mov    %edx,(%eax)
  1025a5:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1025ab:	8b 10                	mov    (%eax),%edx
  1025ad:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1025b3:	89 d0                	mov    %edx,%eax
  1025b5:	01 c0                	add    %eax,%eax
  1025b7:	01 d0                	add    %edx,%eax
  1025b9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1025c0:	01 d0                	add    %edx,%eax
  1025c2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1025c9:	01 d0                	add    %edx,%eax
  1025cb:	89 c2                	mov    %eax,%edx
  1025cd:	c1 e2 04             	shl    $0x4,%edx
  1025d0:	01 d0                	add    %edx,%eax
  1025d2:	c1 e0 02             	shl    $0x2,%eax
  1025d5:	01 c8                	add    %ecx,%eax
  1025d7:	05 14 40 00 00       	add    $0x4014,%eax
  1025dc:	8b 10                	mov    (%eax),%edx
  1025de:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1025e4:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1025e7:	89 c8                	mov    %ecx,%eax
  1025e9:	01 c0                	add    %eax,%eax
  1025eb:	01 c8                	add    %ecx,%eax
  1025ed:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1025f4:	01 c8                	add    %ecx,%eax
  1025f6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1025fd:	01 c8                	add    %ecx,%eax
  1025ff:	89 c1                	mov    %eax,%ecx
  102601:	c1 e1 04             	shl    $0x4,%ecx
  102604:	01 c8                	add    %ecx,%eax
  102606:	c1 e0 02             	shl    $0x2,%eax
  102609:	01 f0                	add    %esi,%eax
  10260b:	05 14 40 00 00       	add    $0x4014,%eax
  102610:	89 10                	mov    %edx,(%eax)
  102612:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102618:	8b 10                	mov    (%eax),%edx
  10261a:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102620:	89 d0                	mov    %edx,%eax
  102622:	01 c0                	add    %eax,%eax
  102624:	01 d0                	add    %edx,%eax
  102626:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10262d:	01 d0                	add    %edx,%eax
  10262f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102636:	01 d0                	add    %edx,%eax
  102638:	89 c2                	mov    %eax,%edx
  10263a:	c1 e2 04             	shl    $0x4,%edx
  10263d:	01 d0                	add    %edx,%eax
  10263f:	c1 e0 02             	shl    $0x2,%eax
  102642:	01 c8                	add    %ecx,%eax
  102644:	05 10 40 00 00       	add    $0x4010,%eax
  102649:	8b 10                	mov    (%eax),%edx
  10264b:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102651:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102654:	89 c8                	mov    %ecx,%eax
  102656:	01 c0                	add    %eax,%eax
  102658:	01 c8                	add    %ecx,%eax
  10265a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102661:	01 c8                	add    %ecx,%eax
  102663:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10266a:	01 c8                	add    %ecx,%eax
  10266c:	89 c1                	mov    %eax,%ecx
  10266e:	c1 e1 04             	shl    $0x4,%ecx
  102671:	01 c8                	add    %ecx,%eax
  102673:	c1 e0 02             	shl    $0x2,%eax
  102676:	01 f0                	add    %esi,%eax
  102678:	05 10 40 00 00       	add    $0x4010,%eax
  10267d:	89 10                	mov    %edx,(%eax)
  10267f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102682:	40                   	inc    %eax
  102683:	01 c0                	add    %eax,%eax
  102685:	c1 e0 03             	shl    $0x3,%eax
  102688:	83 c8 03             	or     $0x3,%eax
  10268b:	89 c1                	mov    %eax,%ecx
  10268d:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102693:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102696:	89 d0                	mov    %edx,%eax
  102698:	01 c0                	add    %eax,%eax
  10269a:	01 d0                	add    %edx,%eax
  10269c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1026a3:	01 d0                	add    %edx,%eax
  1026a5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1026ac:	01 d0                	add    %edx,%eax
  1026ae:	89 c2                	mov    %eax,%edx
  1026b0:	c1 e2 04             	shl    $0x4,%edx
  1026b3:	01 d0                	add    %edx,%eax
  1026b5:	c1 e0 02             	shl    $0x2,%eax
  1026b8:	01 f0                	add    %esi,%eax
  1026ba:	05 0c 40 00 00       	add    $0x400c,%eax
  1026bf:	89 08                	mov    %ecx,(%eax)
  1026c1:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1026c7:	8b 10                	mov    (%eax),%edx
  1026c9:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1026cf:	89 d0                	mov    %edx,%eax
  1026d1:	01 c0                	add    %eax,%eax
  1026d3:	01 d0                	add    %edx,%eax
  1026d5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1026dc:	01 d0                	add    %edx,%eax
  1026de:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1026e5:	01 d0                	add    %edx,%eax
  1026e7:	89 c2                	mov    %eax,%edx
  1026e9:	c1 e2 04             	shl    $0x4,%edx
  1026ec:	01 d0                	add    %edx,%eax
  1026ee:	c1 e0 02             	shl    $0x2,%eax
  1026f1:	01 c8                	add    %ecx,%eax
  1026f3:	05 08 40 00 00       	add    $0x4008,%eax
  1026f8:	8b 10                	mov    (%eax),%edx
  1026fa:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102700:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102703:	89 c8                	mov    %ecx,%eax
  102705:	01 c0                	add    %eax,%eax
  102707:	01 c8                	add    %ecx,%eax
  102709:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102710:	01 c8                	add    %ecx,%eax
  102712:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102719:	01 c8                	add    %ecx,%eax
  10271b:	89 c1                	mov    %eax,%ecx
  10271d:	c1 e1 04             	shl    $0x4,%ecx
  102720:	01 c8                	add    %ecx,%eax
  102722:	c1 e0 02             	shl    $0x2,%eax
  102725:	01 f0                	add    %esi,%eax
  102727:	05 08 40 00 00       	add    $0x4008,%eax
  10272c:	89 10                	mov    %edx,(%eax)
  10272e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102734:	8b 10                	mov    (%eax),%edx
  102736:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  10273c:	89 d0                	mov    %edx,%eax
  10273e:	01 c0                	add    %eax,%eax
  102740:	01 d0                	add    %edx,%eax
  102742:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102749:	01 d0                	add    %edx,%eax
  10274b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102752:	01 d0                	add    %edx,%eax
  102754:	89 c2                	mov    %eax,%edx
  102756:	c1 e2 04             	shl    $0x4,%edx
  102759:	01 d0                	add    %edx,%eax
  10275b:	c1 e0 02             	shl    $0x2,%eax
  10275e:	01 c8                	add    %ecx,%eax
  102760:	05 04 40 00 00       	add    $0x4004,%eax
  102765:	8b 10                	mov    (%eax),%edx
  102767:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10276d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102770:	89 c8                	mov    %ecx,%eax
  102772:	01 c0                	add    %eax,%eax
  102774:	01 c8                	add    %ecx,%eax
  102776:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10277d:	01 c8                	add    %ecx,%eax
  10277f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102786:	01 c8                	add    %ecx,%eax
  102788:	89 c1                	mov    %eax,%ecx
  10278a:	c1 e1 04             	shl    $0x4,%ecx
  10278d:	01 c8                	add    %ecx,%eax
  10278f:	c1 e0 02             	shl    $0x2,%eax
  102792:	01 f0                	add    %esi,%eax
  102794:	05 04 40 00 00       	add    $0x4004,%eax
  102799:	89 10                	mov    %edx,(%eax)
  10279b:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1027a1:	8b 10                	mov    (%eax),%edx
  1027a3:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1027a9:	89 d0                	mov    %edx,%eax
  1027ab:	01 c0                	add    %eax,%eax
  1027ad:	01 d0                	add    %edx,%eax
  1027af:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1027b6:	01 d0                	add    %edx,%eax
  1027b8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1027bf:	01 d0                	add    %edx,%eax
  1027c1:	89 c2                	mov    %eax,%edx
  1027c3:	c1 e2 04             	shl    $0x4,%edx
  1027c6:	01 d0                	add    %edx,%eax
  1027c8:	c1 e0 02             	shl    $0x2,%eax
  1027cb:	01 c8                	add    %ecx,%eax
  1027cd:	05 00 40 00 00       	add    $0x4000,%eax
  1027d2:	8b 10                	mov    (%eax),%edx
  1027d4:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1027da:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1027dd:	89 c8                	mov    %ecx,%eax
  1027df:	01 c0                	add    %eax,%eax
  1027e1:	01 c8                	add    %ecx,%eax
  1027e3:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1027ea:	01 c8                	add    %ecx,%eax
  1027ec:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1027f3:	01 c8                	add    %ecx,%eax
  1027f5:	89 c1                	mov    %eax,%ecx
  1027f7:	c1 e1 04             	shl    $0x4,%ecx
  1027fa:	01 c8                	add    %ecx,%eax
  1027fc:	c1 e0 02             	shl    $0x2,%eax
  1027ff:	01 f0                	add    %esi,%eax
  102801:	05 00 40 00 00       	add    $0x4000,%eax
  102806:	89 10                	mov    %edx,(%eax)
  102808:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  10280e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102811:	89 d0                	mov    %edx,%eax
  102813:	01 c0                	add    %eax,%eax
  102815:	01 d0                	add    %edx,%eax
  102817:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10281e:	01 d0                	add    %edx,%eax
  102820:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102827:	01 d0                	add    %edx,%eax
  102829:	89 c2                	mov    %eax,%edx
  10282b:	c1 e2 04             	shl    $0x4,%edx
  10282e:	01 d0                	add    %edx,%eax
  102830:	c1 e0 02             	shl    $0x2,%eax
  102833:	01 c8                	add    %ecx,%eax
  102835:	05 2c 40 00 00       	add    $0x402c,%eax
  10283a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102840:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102846:	8b 08                	mov    (%eax),%ecx
  102848:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10284b:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  102851:	89 c8                	mov    %ecx,%eax
  102853:	01 c0                	add    %eax,%eax
  102855:	01 c8                	add    %ecx,%eax
  102857:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10285e:	01 c8                	add    %ecx,%eax
  102860:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102867:	01 c8                	add    %ecx,%eax
  102869:	89 c1                	mov    %eax,%ecx
  10286b:	c1 e1 04             	shl    $0x4,%ecx
  10286e:	01 c8                	add    %ecx,%eax
  102870:	c1 e0 02             	shl    $0x2,%eax
  102873:	01 d8                	add    %ebx,%eax
  102875:	05 2c 40 00 00       	add    $0x402c,%eax
  10287a:	89 10                	mov    %edx,(%eax)
  10287c:	eb 3e                	jmp    1028bc <syscallFork+0xb6e>
  10287e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102884:	8b 10                	mov    (%eax),%edx
  102886:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  10288c:	89 d0                	mov    %edx,%eax
  10288e:	01 c0                	add    %eax,%eax
  102890:	01 d0                	add    %edx,%eax
  102892:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102899:	01 d0                	add    %edx,%eax
  10289b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1028a2:	01 d0                	add    %edx,%eax
  1028a4:	89 c2                	mov    %eax,%edx
  1028a6:	c1 e2 04             	shl    $0x4,%edx
  1028a9:	01 d0                	add    %edx,%eax
  1028ab:	c1 e0 02             	shl    $0x2,%eax
  1028ae:	01 c8                	add    %ecx,%eax
  1028b0:	05 2c 40 00 00       	add    $0x402c,%eax
  1028b5:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  1028bb:	90                   	nop
  1028bc:	83 c4 10             	add    $0x10,%esp
  1028bf:	5b                   	pop    %ebx
  1028c0:	5e                   	pop    %esi
  1028c1:	5d                   	pop    %ebp
  1028c2:	c3                   	ret    

001028c3 <syscallExec>:
  1028c3:	55                   	push   %ebp
  1028c4:	89 e5                	mov    %esp,%ebp
  1028c6:	53                   	push   %ebx
  1028c7:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  1028cd:	e8 ab 06 00 00       	call   102f7d <__x86.get_pc_thunk.dx>
  1028d2:	81 c2 2e 47 00 00    	add    $0x472e,%edx
  1028d8:	8b 45 08             	mov    0x8(%ebp),%eax
  1028db:	8b 40 0c             	mov    0xc(%eax),%eax
  1028de:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1028e1:	8b 45 08             	mov    0x8(%ebp),%eax
  1028e4:	8b 40 28             	mov    0x28(%eax),%eax
  1028e7:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1028ea:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1028f1:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  1028f5:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1028fc:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  102903:	00 00 00 
  102906:	8e 45 e4             	mov    -0x1c(%ebp),%es
  102909:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10290c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10290f:	01 c8                	add    %ecx,%eax
  102911:	26 8a 00             	mov    %es:(%eax),%al
  102914:	88 45 f3             	mov    %al,-0xd(%ebp)
  102917:	eb 21                	jmp    10293a <syscallExec+0x77>
  102919:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  10291f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102922:	01 c1                	add    %eax,%ecx
  102924:	8a 45 f3             	mov    -0xd(%ebp),%al
  102927:	88 01                	mov    %al,(%ecx)
  102929:	ff 45 f4             	incl   -0xc(%ebp)
  10292c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10292f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102932:	01 c8                	add    %ecx,%eax
  102934:	26 8a 00             	mov    %es:(%eax),%al
  102937:	88 45 f3             	mov    %al,-0xd(%ebp)
  10293a:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  10293e:	75 d9                	jne    102919 <syscallExec+0x56>
  102940:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  102946:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102949:	01 c8                	add    %ecx,%eax
  10294b:	c6 00 00             	movb   $0x0,(%eax)
  10294e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102954:	8b 00                	mov    (%eax),%eax
  102956:	40                   	inc    %eax
  102957:	c1 e0 14             	shl    $0x14,%eax
  10295a:	89 c1                	mov    %eax,%ecx
  10295c:	83 ec 04             	sub    $0x4,%esp
  10295f:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  102965:	50                   	push   %eax
  102966:	51                   	push   %ecx
  102967:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  10296d:	50                   	push   %eax
  10296e:	89 d3                	mov    %edx,%ebx
  102970:	e8 c0 11 00 00       	call   103b35 <loadElf>
  102975:	83 c4 10             	add    $0x10,%esp
  102978:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10297b:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
  10297f:	75 0c                	jne    10298d <syscallExec+0xca>
  102981:	8b 45 08             	mov    0x8(%ebp),%eax
  102984:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  10298b:	eb 0d                	jmp    10299a <syscallExec+0xd7>
  10298d:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
  102993:	8b 45 08             	mov    0x8(%ebp),%eax
  102996:	89 50 38             	mov    %edx,0x38(%eax)
  102999:	90                   	nop
  10299a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10299d:	c9                   	leave  
  10299e:	c3                   	ret    

0010299f <syscallSleep>:
  10299f:	55                   	push   %ebp
  1029a0:	89 e5                	mov    %esp,%ebp
  1029a2:	53                   	push   %ebx
  1029a3:	e8 d5 05 00 00       	call   102f7d <__x86.get_pc_thunk.dx>
  1029a8:	81 c2 58 46 00 00    	add    $0x4658,%edx
  1029ae:	8b 45 08             	mov    0x8(%ebp),%eax
  1029b1:	8b 40 28             	mov    0x28(%eax),%eax
  1029b4:	85 c0                	test   %eax,%eax
  1029b6:	0f 84 81 00 00 00    	je     102a3d <syscallSleep+0x9e>
  1029bc:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1029c2:	8b 08                	mov    (%eax),%ecx
  1029c4:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  1029ca:	89 c8                	mov    %ecx,%eax
  1029cc:	01 c0                	add    %eax,%eax
  1029ce:	01 c8                	add    %ecx,%eax
  1029d0:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1029d7:	01 c8                	add    %ecx,%eax
  1029d9:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1029e0:	01 c8                	add    %ecx,%eax
  1029e2:	89 c1                	mov    %eax,%ecx
  1029e4:	c1 e1 04             	shl    $0x4,%ecx
  1029e7:	01 c8                	add    %ecx,%eax
  1029e9:	c1 e0 02             	shl    $0x2,%eax
  1029ec:	01 d8                	add    %ebx,%eax
  1029ee:	05 54 40 00 00       	add    $0x4054,%eax
  1029f3:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  1029f9:	8b 45 08             	mov    0x8(%ebp),%eax
  1029fc:	8b 58 28             	mov    0x28(%eax),%ebx
  1029ff:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102a05:	8b 08                	mov    (%eax),%ecx
  102a07:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  102a0d:	89 c8                	mov    %ecx,%eax
  102a0f:	01 c0                	add    %eax,%eax
  102a11:	01 c8                	add    %ecx,%eax
  102a13:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102a1a:	01 c8                	add    %ecx,%eax
  102a1c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102a23:	01 c8                	add    %ecx,%eax
  102a25:	89 c1                	mov    %eax,%ecx
  102a27:	c1 e1 04             	shl    $0x4,%ecx
  102a2a:	01 c8                	add    %ecx,%eax
  102a2c:	c1 e0 02             	shl    $0x2,%eax
  102a2f:	01 d0                	add    %edx,%eax
  102a31:	05 5c 40 00 00       	add    $0x405c,%eax
  102a36:	89 18                	mov    %ebx,(%eax)
  102a38:	cd 20                	int    $0x20
  102a3a:	90                   	nop
  102a3b:	eb 01                	jmp    102a3e <syscallSleep+0x9f>
  102a3d:	90                   	nop
  102a3e:	5b                   	pop    %ebx
  102a3f:	5d                   	pop    %ebp
  102a40:	c3                   	ret    

00102a41 <syscallExit>:
  102a41:	55                   	push   %ebp
  102a42:	89 e5                	mov    %esp,%ebp
  102a44:	e8 fc d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102a49:	05 b7 45 00 00       	add    $0x45b7,%eax
  102a4e:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102a54:	8b 12                	mov    (%edx),%edx
  102a56:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102a5c:	89 d0                	mov    %edx,%eax
  102a5e:	01 c0                	add    %eax,%eax
  102a60:	01 d0                	add    %edx,%eax
  102a62:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102a69:	01 d0                	add    %edx,%eax
  102a6b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102a72:	01 d0                	add    %edx,%eax
  102a74:	89 c2                	mov    %eax,%edx
  102a76:	c1 e2 04             	shl    $0x4,%edx
  102a79:	01 d0                	add    %edx,%eax
  102a7b:	c1 e0 02             	shl    $0x2,%eax
  102a7e:	01 c8                	add    %ecx,%eax
  102a80:	05 54 40 00 00       	add    $0x4054,%eax
  102a85:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  102a8b:	cd 20                	int    $0x20
  102a8d:	90                   	nop
  102a8e:	5d                   	pop    %ebp
  102a8f:	c3                   	ret    

00102a90 <syscallSem>:
  102a90:	55                   	push   %ebp
  102a91:	89 e5                	mov    %esp,%ebp
  102a93:	83 ec 08             	sub    $0x8,%esp
  102a96:	e8 aa d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102a9b:	05 65 45 00 00       	add    $0x4565,%eax
  102aa0:	8b 45 08             	mov    0x8(%ebp),%eax
  102aa3:	8b 40 28             	mov    0x28(%eax),%eax
  102aa6:	83 f8 01             	cmp    $0x1,%eax
  102aa9:	74 21                	je     102acc <syscallSem+0x3c>
  102aab:	83 f8 01             	cmp    $0x1,%eax
  102aae:	72 0c                	jb     102abc <syscallSem+0x2c>
  102ab0:	83 f8 02             	cmp    $0x2,%eax
  102ab3:	74 27                	je     102adc <syscallSem+0x4c>
  102ab5:	83 f8 03             	cmp    $0x3,%eax
  102ab8:	74 32                	je     102aec <syscallSem+0x5c>
  102aba:	eb 3f                	jmp    102afb <syscallSem+0x6b>
  102abc:	83 ec 0c             	sub    $0xc,%esp
  102abf:	ff 75 08             	pushl  0x8(%ebp)
  102ac2:	e8 37 00 00 00       	call   102afe <syscallSemInit>
  102ac7:	83 c4 10             	add    $0x10,%esp
  102aca:	eb 2f                	jmp    102afb <syscallSem+0x6b>
  102acc:	83 ec 0c             	sub    $0xc,%esp
  102acf:	ff 75 08             	pushl  0x8(%ebp)
  102ad2:	e8 a8 00 00 00       	call   102b7f <syscallSemWait>
  102ad7:	83 c4 10             	add    $0x10,%esp
  102ada:	eb 1f                	jmp    102afb <syscallSem+0x6b>
  102adc:	83 ec 0c             	sub    $0xc,%esp
  102adf:	ff 75 08             	pushl  0x8(%ebp)
  102ae2:	e8 dd 02 00 00       	call   102dc4 <syscallSemPost>
  102ae7:	83 c4 10             	add    $0x10,%esp
  102aea:	eb 0f                	jmp    102afb <syscallSem+0x6b>
  102aec:	83 ec 0c             	sub    $0xc,%esp
  102aef:	ff 75 08             	pushl  0x8(%ebp)
  102af2:	e8 b5 03 00 00       	call   102eac <syscallSemDestroy>
  102af7:	83 c4 10             	add    $0x10,%esp
  102afa:	90                   	nop
  102afb:	90                   	nop
  102afc:	c9                   	leave  
  102afd:	c3                   	ret    

00102afe <syscallSemInit>:
  102afe:	55                   	push   %ebp
  102aff:	89 e5                	mov    %esp,%ebp
  102b01:	83 ec 10             	sub    $0x10,%esp
  102b04:	e8 3c d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b09:	05 f7 44 00 00       	add    $0x44f7,%eax
  102b0e:	8b 55 08             	mov    0x8(%ebp),%edx
  102b11:	8b 52 24             	mov    0x24(%edx),%edx
  102b14:	89 55 f8             	mov    %edx,-0x8(%ebp)
  102b17:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102b1e:	eb 4c                	jmp    102b6c <syscallSemInit+0x6e>
  102b20:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102b26:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  102b29:	c1 e1 04             	shl    $0x4,%ecx
  102b2c:	01 ca                	add    %ecx,%edx
  102b2e:	8b 12                	mov    (%edx),%edx
  102b30:	85 d2                	test   %edx,%edx
  102b32:	75 35                	jne    102b69 <syscallSemInit+0x6b>
  102b34:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  102b37:	8b 55 08             	mov    0x8(%ebp),%edx
  102b3a:	89 4a 2c             	mov    %ecx,0x2c(%edx)
  102b3d:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102b43:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  102b46:	c1 e1 04             	shl    $0x4,%ecx
  102b49:	01 ca                	add    %ecx,%edx
  102b4b:	8d 4a 04             	lea    0x4(%edx),%ecx
  102b4e:	8b 55 f8             	mov    -0x8(%ebp),%edx
  102b51:	89 11                	mov    %edx,(%ecx)
  102b53:	c7 c0 c0 8e 10 00    	mov    $0x108ec0,%eax
  102b59:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102b5c:	c1 e2 04             	shl    $0x4,%edx
  102b5f:	01 d0                	add    %edx,%eax
  102b61:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  102b67:	eb 14                	jmp    102b7d <syscallSemInit+0x7f>
  102b69:	ff 45 fc             	incl   -0x4(%ebp)
  102b6c:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  102b70:	7e ae                	jle    102b20 <syscallSemInit+0x22>
  102b72:	8b 45 08             	mov    0x8(%ebp),%eax
  102b75:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  102b7c:	90                   	nop
  102b7d:	c9                   	leave  
  102b7e:	c3                   	ret    

00102b7f <syscallSemWait>:
  102b7f:	55                   	push   %ebp
  102b80:	89 e5                	mov    %esp,%ebp
  102b82:	56                   	push   %esi
  102b83:	53                   	push   %ebx
  102b84:	83 ec 10             	sub    $0x10,%esp
  102b87:	e8 b9 d8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b8c:	05 74 44 00 00       	add    $0x4474,%eax
  102b91:	8b 55 08             	mov    0x8(%ebp),%edx
  102b94:	8b 52 24             	mov    0x24(%edx),%edx
  102b97:	89 55 f4             	mov    %edx,-0xc(%ebp)
  102b9a:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102ba0:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102ba3:	c1 e1 04             	shl    $0x4,%ecx
  102ba6:	01 ca                	add    %ecx,%edx
  102ba8:	83 c2 04             	add    $0x4,%edx
  102bab:	8b 12                	mov    (%edx),%edx
  102bad:	8d 4a ff             	lea    -0x1(%edx),%ecx
  102bb0:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102bb6:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  102bb9:	c1 e3 04             	shl    $0x4,%ebx
  102bbc:	01 da                	add    %ebx,%edx
  102bbe:	83 c2 04             	add    $0x4,%edx
  102bc1:	89 0a                	mov    %ecx,(%edx)
  102bc3:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102bc9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102bcc:	c1 e1 04             	shl    $0x4,%ecx
  102bcf:	01 ca                	add    %ecx,%edx
  102bd1:	83 c2 04             	add    $0x4,%edx
  102bd4:	8b 12                	mov    (%edx),%edx
  102bd6:	85 d2                	test   %edx,%edx
  102bd8:	0f 89 de 01 00 00    	jns    102dbc <syscallSemWait+0x23d>
  102bde:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102be4:	8b 1a                	mov    (%edx),%ebx
  102be6:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102bec:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102bef:	c1 e1 04             	shl    $0x4,%ecx
  102bf2:	01 ca                	add    %ecx,%edx
  102bf4:	83 c2 08             	add    $0x8,%edx
  102bf7:	8b 0a                	mov    (%edx),%ecx
  102bf9:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102bff:	89 da                	mov    %ebx,%edx
  102c01:	01 d2                	add    %edx,%edx
  102c03:	01 da                	add    %ebx,%edx
  102c05:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  102c0c:	01 da                	add    %ebx,%edx
  102c0e:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  102c15:	01 da                	add    %ebx,%edx
  102c17:	89 d3                	mov    %edx,%ebx
  102c19:	c1 e3 04             	shl    $0x4,%ebx
  102c1c:	01 da                	add    %ebx,%edx
  102c1e:	c1 e2 02             	shl    $0x2,%edx
  102c21:	01 f2                	add    %esi,%edx
  102c23:	81 c2 84 40 00 00    	add    $0x4084,%edx
  102c29:	89 0a                	mov    %ecx,(%edx)
  102c2b:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102c31:	8b 0a                	mov    (%edx),%ecx
  102c33:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102c36:	89 d3                	mov    %edx,%ebx
  102c38:	c1 e3 04             	shl    $0x4,%ebx
  102c3b:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102c41:	01 da                	add    %ebx,%edx
  102c43:	8d 5a 08             	lea    0x8(%edx),%ebx
  102c46:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102c4c:	89 ca                	mov    %ecx,%edx
  102c4e:	01 d2                	add    %edx,%edx
  102c50:	01 ca                	add    %ecx,%edx
  102c52:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102c59:	01 ca                	add    %ecx,%edx
  102c5b:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102c62:	01 ca                	add    %ecx,%edx
  102c64:	89 d1                	mov    %edx,%ecx
  102c66:	c1 e1 04             	shl    $0x4,%ecx
  102c69:	01 ca                	add    %ecx,%edx
  102c6b:	c1 e2 02             	shl    $0x2,%edx
  102c6e:	01 f2                	add    %esi,%edx
  102c70:	81 c2 88 40 00 00    	add    $0x4088,%edx
  102c76:	89 1a                	mov    %ebx,(%edx)
  102c78:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102c7e:	8b 0a                	mov    (%edx),%ecx
  102c80:	89 ca                	mov    %ecx,%edx
  102c82:	01 d2                	add    %edx,%edx
  102c84:	01 ca                	add    %ecx,%edx
  102c86:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102c8d:	01 ca                	add    %ecx,%edx
  102c8f:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102c96:	01 ca                	add    %ecx,%edx
  102c98:	89 d1                	mov    %edx,%ecx
  102c9a:	c1 e1 04             	shl    $0x4,%ecx
  102c9d:	01 ca                	add    %ecx,%edx
  102c9f:	c1 e2 02             	shl    $0x2,%edx
  102ca2:	8d 8a 80 40 00 00    	lea    0x4080(%edx),%ecx
  102ca8:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  102cae:	01 ca                	add    %ecx,%edx
  102cb0:	8d 4a 04             	lea    0x4(%edx),%ecx
  102cb3:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102cb9:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  102cbc:	c1 e3 04             	shl    $0x4,%ebx
  102cbf:	01 da                	add    %ebx,%edx
  102cc1:	83 c2 08             	add    $0x8,%edx
  102cc4:	89 0a                	mov    %ecx,(%edx)
  102cc6:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102ccc:	8b 1a                	mov    (%edx),%ebx
  102cce:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102cd4:	8b 0a                	mov    (%edx),%ecx
  102cd6:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102cdc:	89 ca                	mov    %ecx,%edx
  102cde:	01 d2                	add    %edx,%edx
  102ce0:	01 ca                	add    %ecx,%edx
  102ce2:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102ce9:	01 ca                	add    %ecx,%edx
  102ceb:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102cf2:	01 ca                	add    %ecx,%edx
  102cf4:	89 d1                	mov    %edx,%ecx
  102cf6:	c1 e1 04             	shl    $0x4,%ecx
  102cf9:	01 ca                	add    %ecx,%edx
  102cfb:	c1 e2 02             	shl    $0x2,%edx
  102cfe:	01 f2                	add    %esi,%edx
  102d00:	81 c2 84 40 00 00    	add    $0x4084,%edx
  102d06:	8b 0a                	mov    (%edx),%ecx
  102d08:	89 da                	mov    %ebx,%edx
  102d0a:	01 d2                	add    %edx,%edx
  102d0c:	01 da                	add    %ebx,%edx
  102d0e:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  102d15:	01 da                	add    %ebx,%edx
  102d17:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  102d1e:	01 da                	add    %ebx,%edx
  102d20:	89 d3                	mov    %edx,%ebx
  102d22:	c1 e3 04             	shl    $0x4,%ebx
  102d25:	01 da                	add    %ebx,%edx
  102d27:	c1 e2 02             	shl    $0x2,%edx
  102d2a:	8d 9a 80 40 00 00    	lea    0x4080(%edx),%ebx
  102d30:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  102d36:	01 da                	add    %ebx,%edx
  102d38:	83 c2 04             	add    $0x4,%edx
  102d3b:	89 51 04             	mov    %edx,0x4(%ecx)
  102d3e:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102d44:	8b 0a                	mov    (%edx),%ecx
  102d46:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  102d4c:	89 ca                	mov    %ecx,%edx
  102d4e:	01 d2                	add    %edx,%edx
  102d50:	01 ca                	add    %ecx,%edx
  102d52:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102d59:	01 ca                	add    %ecx,%edx
  102d5b:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102d62:	01 ca                	add    %ecx,%edx
  102d64:	89 d1                	mov    %edx,%ecx
  102d66:	c1 e1 04             	shl    $0x4,%ecx
  102d69:	01 ca                	add    %ecx,%edx
  102d6b:	c1 e2 02             	shl    $0x2,%edx
  102d6e:	01 da                	add    %ebx,%edx
  102d70:	81 c2 54 40 00 00    	add    $0x4054,%edx
  102d76:	c7 02 02 00 00 00    	movl   $0x2,(%edx)
  102d7c:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102d82:	8b 12                	mov    (%edx),%edx
  102d84:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102d8a:	89 d0                	mov    %edx,%eax
  102d8c:	01 c0                	add    %eax,%eax
  102d8e:	01 d0                	add    %edx,%eax
  102d90:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102d97:	01 d0                	add    %edx,%eax
  102d99:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102da0:	01 d0                	add    %edx,%eax
  102da2:	89 c2                	mov    %eax,%edx
  102da4:	c1 e2 04             	shl    $0x4,%edx
  102da7:	01 d0                	add    %edx,%eax
  102da9:	c1 e0 02             	shl    $0x2,%eax
  102dac:	01 c8                	add    %ecx,%eax
  102dae:	05 5c 40 00 00       	add    $0x405c,%eax
  102db3:	c7 00 80 00 00 00    	movl   $0x80,(%eax)
  102db9:	cd 20                	int    $0x20
  102dbb:	90                   	nop
  102dbc:	90                   	nop
  102dbd:	83 c4 10             	add    $0x10,%esp
  102dc0:	5b                   	pop    %ebx
  102dc1:	5e                   	pop    %esi
  102dc2:	5d                   	pop    %ebp
  102dc3:	c3                   	ret    

00102dc4 <syscallSemPost>:
  102dc4:	55                   	push   %ebp
  102dc5:	89 e5                	mov    %esp,%ebp
  102dc7:	53                   	push   %ebx
  102dc8:	83 ec 10             	sub    $0x10,%esp
  102dcb:	e8 75 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102dd0:	05 30 42 00 00       	add    $0x4230,%eax
  102dd5:	8b 55 08             	mov    0x8(%ebp),%edx
  102dd8:	8b 52 24             	mov    0x24(%edx),%edx
  102ddb:	89 55 f8             	mov    %edx,-0x8(%ebp)
  102dde:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102de4:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102de7:	c1 e1 04             	shl    $0x4,%ecx
  102dea:	01 ca                	add    %ecx,%edx
  102dec:	83 c2 04             	add    $0x4,%edx
  102def:	8b 12                	mov    (%edx),%edx
  102df1:	8d 4a 01             	lea    0x1(%edx),%ecx
  102df4:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102dfa:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  102dfd:	c1 e3 04             	shl    $0x4,%ebx
  102e00:	01 da                	add    %ebx,%edx
  102e02:	83 c2 04             	add    $0x4,%edx
  102e05:	89 0a                	mov    %ecx,(%edx)
  102e07:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102e0d:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102e10:	c1 e1 04             	shl    $0x4,%ecx
  102e13:	01 ca                	add    %ecx,%edx
  102e15:	83 c2 04             	add    $0x4,%edx
  102e18:	8b 12                	mov    (%edx),%edx
  102e1a:	85 d2                	test   %edx,%edx
  102e1c:	0f 8f 83 00 00 00    	jg     102ea5 <syscallSemPost+0xe1>
  102e22:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102e28:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102e2b:	c1 e1 04             	shl    $0x4,%ecx
  102e2e:	01 ca                	add    %ecx,%edx
  102e30:	83 c2 0c             	add    $0xc,%edx
  102e33:	8b 12                	mov    (%edx),%edx
  102e35:	81 ea 84 40 00 00    	sub    $0x4084,%edx
  102e3b:	89 90 28 01 00 00    	mov    %edx,0x128(%eax)
  102e41:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102e47:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102e4a:	c1 e1 04             	shl    $0x4,%ecx
  102e4d:	01 ca                	add    %ecx,%edx
  102e4f:	83 c2 0c             	add    $0xc,%edx
  102e52:	8b 12                	mov    (%edx),%edx
  102e54:	8b 52 04             	mov    0x4(%edx),%edx
  102e57:	c7 c1 c0 8e 10 00    	mov    $0x108ec0,%ecx
  102e5d:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  102e60:	c1 e3 04             	shl    $0x4,%ebx
  102e63:	01 d9                	add    %ebx,%ecx
  102e65:	83 c1 0c             	add    $0xc,%ecx
  102e68:	89 11                	mov    %edx,(%ecx)
  102e6a:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102e70:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102e73:	c1 e1 04             	shl    $0x4,%ecx
  102e76:	01 ca                	add    %ecx,%edx
  102e78:	83 c2 0c             	add    $0xc,%edx
  102e7b:	8b 12                	mov    (%edx),%edx
  102e7d:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102e80:	89 cb                	mov    %ecx,%ebx
  102e82:	c1 e3 04             	shl    $0x4,%ebx
  102e85:	c7 c1 c0 8e 10 00    	mov    $0x108ec0,%ecx
  102e8b:	01 d9                	add    %ebx,%ecx
  102e8d:	83 c1 08             	add    $0x8,%ecx
  102e90:	89 0a                	mov    %ecx,(%edx)
  102e92:	8b 80 28 01 00 00    	mov    0x128(%eax),%eax
  102e98:	c7 80 54 40 00 00 00 	movl   $0x0,0x4054(%eax)
  102e9f:	00 00 00 
  102ea2:	cd 20                	int    $0x20
  102ea4:	90                   	nop
  102ea5:	90                   	nop
  102ea6:	83 c4 10             	add    $0x10,%esp
  102ea9:	5b                   	pop    %ebx
  102eaa:	5d                   	pop    %ebp
  102eab:	c3                   	ret    

00102eac <syscallSemDestroy>:
  102eac:	55                   	push   %ebp
  102ead:	89 e5                	mov    %esp,%ebp
  102eaf:	83 ec 10             	sub    $0x10,%esp
  102eb2:	e8 8e d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102eb7:	05 49 41 00 00       	add    $0x4149,%eax
  102ebc:	8b 55 08             	mov    0x8(%ebp),%edx
  102ebf:	8b 52 24             	mov    0x24(%edx),%edx
  102ec2:	89 55 fc             	mov    %edx,-0x4(%ebp)
  102ec5:	c7 c0 c0 8e 10 00    	mov    $0x108ec0,%eax
  102ecb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102ece:	c1 e2 04             	shl    $0x4,%edx
  102ed1:	01 d0                	add    %edx,%eax
  102ed3:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102ed9:	90                   	nop
  102eda:	c9                   	leave  
  102edb:	c3                   	ret    

00102edc <syscallGetPid>:
  102edc:	55                   	push   %ebp
  102edd:	89 e5                	mov    %esp,%ebp
  102edf:	53                   	push   %ebx
  102ee0:	e8 60 d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102ee5:	05 1b 41 00 00       	add    $0x411b,%eax
  102eea:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102ef0:	8b 0a                	mov    (%edx),%ecx
  102ef2:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102ef8:	8b 12                	mov    (%edx),%edx
  102efa:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  102f00:	89 d0                	mov    %edx,%eax
  102f02:	01 c0                	add    %eax,%eax
  102f04:	01 d0                	add    %edx,%eax
  102f06:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102f0d:	01 d0                	add    %edx,%eax
  102f0f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102f16:	01 d0                	add    %edx,%eax
  102f18:	89 c2                	mov    %eax,%edx
  102f1a:	c1 e2 04             	shl    $0x4,%edx
  102f1d:	01 d0                	add    %edx,%eax
  102f1f:	c1 e0 02             	shl    $0x2,%eax
  102f22:	01 d8                	add    %ebx,%eax
  102f24:	05 2c 40 00 00       	add    $0x402c,%eax
  102f29:	89 08                	mov    %ecx,(%eax)
  102f2b:	90                   	nop
  102f2c:	5b                   	pop    %ebx
  102f2d:	5d                   	pop    %ebp
  102f2e:	c3                   	ret    

00102f2f <GProtectFaultHandle>:
  102f2f:	55                   	push   %ebp
  102f30:	89 e5                	mov    %esp,%ebp
  102f32:	53                   	push   %ebx
  102f33:	83 ec 04             	sub    $0x4,%esp
  102f36:	e8 0a d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102f3b:	05 c5 40 00 00       	add    $0x40c5,%eax
  102f40:	83 ec 08             	sub    $0x8,%esp
  102f43:	68 8d 02 00 00       	push   $0x28d
  102f48:	8d 90 e6 d9 ff ff    	lea    -0x261a(%eax),%edx
  102f4e:	52                   	push   %edx
  102f4f:	89 c3                	mov    %eax,%ebx
  102f51:	e8 61 17 00 00       	call   1046b7 <abort>
  102f56:	83 c4 10             	add    $0x10,%esp
  102f59:	90                   	nop
  102f5a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102f5d:	c9                   	leave  
  102f5e:	c3                   	ret    

00102f5f <syscallGetRandom>:
  102f5f:	55                   	push   %ebp
  102f60:	89 e5                	mov    %esp,%ebp
  102f62:	e8 de d4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102f67:	05 99 40 00 00       	add    $0x4099,%eax
  102f6c:	c7 c0 04 72 10 00    	mov    $0x107204,%eax
  102f72:	8b 10                	mov    (%eax),%edx
  102f74:	8b 45 08             	mov    0x8(%ebp),%eax
  102f77:	89 50 2c             	mov    %edx,0x2c(%eax)
  102f7a:	90                   	nop
  102f7b:	5d                   	pop    %ebp
  102f7c:	c3                   	ret    

00102f7d <__x86.get_pc_thunk.dx>:
  102f7d:	8b 14 24             	mov    (%esp),%edx
  102f80:	c3                   	ret    

00102f81 <__x86.get_pc_thunk.cx>:
  102f81:	8b 0c 24             	mov    (%esp),%ecx
  102f84:	c3                   	ret    

00102f85 <inByte>:
  102f85:	55                   	push   %ebp
  102f86:	89 e5                	mov    %esp,%ebp
  102f88:	83 ec 14             	sub    $0x14,%esp
  102f8b:	e8 b5 d4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102f90:	05 70 40 00 00       	add    $0x4070,%eax
  102f95:	8b 45 08             	mov    0x8(%ebp),%eax
  102f98:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  102f9c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102f9f:	89 c2                	mov    %eax,%edx
  102fa1:	ec                   	in     (%dx),%al
  102fa2:	88 45 ff             	mov    %al,-0x1(%ebp)
  102fa5:	8a 45 ff             	mov    -0x1(%ebp),%al
  102fa8:	c9                   	leave  
  102fa9:	c3                   	ret    

00102faa <outByte>:
  102faa:	55                   	push   %ebp
  102fab:	89 e5                	mov    %esp,%ebp
  102fad:	83 ec 08             	sub    $0x8,%esp
  102fb0:	e8 90 d4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102fb5:	05 4b 40 00 00       	add    $0x404b,%eax
  102fba:	8b 45 08             	mov    0x8(%ebp),%eax
  102fbd:	8b 55 0c             	mov    0xc(%ebp),%edx
  102fc0:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  102fc4:	88 d0                	mov    %dl,%al
  102fc6:	88 45 f8             	mov    %al,-0x8(%ebp)
  102fc9:	8a 45 f8             	mov    -0x8(%ebp),%al
  102fcc:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102fcf:	ee                   	out    %al,(%dx)
  102fd0:	90                   	nop
  102fd1:	c9                   	leave  
  102fd2:	c3                   	ret    

00102fd3 <initKeyTable>:
  102fd3:	55                   	push   %ebp
  102fd4:	89 e5                	mov    %esp,%ebp
  102fd6:	83 ec 10             	sub    $0x10,%esp
  102fd9:	e8 67 d4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102fde:	05 22 40 00 00       	add    $0x4022,%eax
  102fe3:	c7 c2 60 8e 10 00    	mov    $0x108e60,%edx
  102fe9:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102fef:	c7 c2 40 8a 10 00    	mov    $0x108a40,%edx
  102ff5:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102ffb:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  103002:	00 00 00 
  103005:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  10300b:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  103011:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103018:	eb 1f                	jmp    103039 <initKeyTable+0x66>
  10301a:	8d 88 40 01 00 00    	lea    0x140(%eax),%ecx
  103020:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103023:	01 ca                	add    %ecx,%edx
  103025:	c6 02 00             	movb   $0x0,(%edx)
  103028:	8d 88 a0 01 00 00    	lea    0x1a0(%eax),%ecx
  10302e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103031:	01 ca                	add    %ecx,%edx
  103033:	c6 02 00             	movb   $0x0,(%edx)
  103036:	ff 45 fc             	incl   -0x4(%ebp)
  103039:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  10303d:	7e db                	jle    10301a <initKeyTable+0x47>
  10303f:	c6 80 42 01 00 00 31 	movb   $0x31,0x142(%eax)
  103046:	c6 80 a2 01 00 00 21 	movb   $0x21,0x1a2(%eax)
  10304d:	c6 80 43 01 00 00 32 	movb   $0x32,0x143(%eax)
  103054:	c6 80 a3 01 00 00 40 	movb   $0x40,0x1a3(%eax)
  10305b:	c6 80 44 01 00 00 33 	movb   $0x33,0x144(%eax)
  103062:	c6 80 a4 01 00 00 23 	movb   $0x23,0x1a4(%eax)
  103069:	c6 80 45 01 00 00 34 	movb   $0x34,0x145(%eax)
  103070:	c6 80 a5 01 00 00 24 	movb   $0x24,0x1a5(%eax)
  103077:	c6 80 46 01 00 00 35 	movb   $0x35,0x146(%eax)
  10307e:	c6 80 a6 01 00 00 25 	movb   $0x25,0x1a6(%eax)
  103085:	c6 80 47 01 00 00 36 	movb   $0x36,0x147(%eax)
  10308c:	c6 80 a7 01 00 00 5e 	movb   $0x5e,0x1a7(%eax)
  103093:	c6 80 48 01 00 00 37 	movb   $0x37,0x148(%eax)
  10309a:	c6 80 a8 01 00 00 26 	movb   $0x26,0x1a8(%eax)
  1030a1:	c6 80 49 01 00 00 38 	movb   $0x38,0x149(%eax)
  1030a8:	c6 80 a9 01 00 00 2a 	movb   $0x2a,0x1a9(%eax)
  1030af:	c6 80 4a 01 00 00 39 	movb   $0x39,0x14a(%eax)
  1030b6:	c6 80 aa 01 00 00 28 	movb   $0x28,0x1aa(%eax)
  1030bd:	c6 80 4b 01 00 00 30 	movb   $0x30,0x14b(%eax)
  1030c4:	c6 80 ab 01 00 00 29 	movb   $0x29,0x1ab(%eax)
  1030cb:	c6 80 5e 01 00 00 61 	movb   $0x61,0x15e(%eax)
  1030d2:	c6 80 be 01 00 00 41 	movb   $0x41,0x1be(%eax)
  1030d9:	c6 80 70 01 00 00 62 	movb   $0x62,0x170(%eax)
  1030e0:	c6 80 d0 01 00 00 42 	movb   $0x42,0x1d0(%eax)
  1030e7:	c6 80 6e 01 00 00 63 	movb   $0x63,0x16e(%eax)
  1030ee:	c6 80 ce 01 00 00 43 	movb   $0x43,0x1ce(%eax)
  1030f5:	c6 80 60 01 00 00 64 	movb   $0x64,0x160(%eax)
  1030fc:	c6 80 c0 01 00 00 44 	movb   $0x44,0x1c0(%eax)
  103103:	c6 80 52 01 00 00 65 	movb   $0x65,0x152(%eax)
  10310a:	c6 80 b2 01 00 00 45 	movb   $0x45,0x1b2(%eax)
  103111:	c6 80 61 01 00 00 66 	movb   $0x66,0x161(%eax)
  103118:	c6 80 c1 01 00 00 46 	movb   $0x46,0x1c1(%eax)
  10311f:	c6 80 62 01 00 00 67 	movb   $0x67,0x162(%eax)
  103126:	c6 80 c2 01 00 00 47 	movb   $0x47,0x1c2(%eax)
  10312d:	c6 80 63 01 00 00 68 	movb   $0x68,0x163(%eax)
  103134:	c6 80 c3 01 00 00 48 	movb   $0x48,0x1c3(%eax)
  10313b:	c6 80 57 01 00 00 69 	movb   $0x69,0x157(%eax)
  103142:	c6 80 b7 01 00 00 49 	movb   $0x49,0x1b7(%eax)
  103149:	c6 80 64 01 00 00 6a 	movb   $0x6a,0x164(%eax)
  103150:	c6 80 c4 01 00 00 4a 	movb   $0x4a,0x1c4(%eax)
  103157:	c6 80 65 01 00 00 6b 	movb   $0x6b,0x165(%eax)
  10315e:	c6 80 c5 01 00 00 4b 	movb   $0x4b,0x1c5(%eax)
  103165:	c6 80 66 01 00 00 6c 	movb   $0x6c,0x166(%eax)
  10316c:	c6 80 c6 01 00 00 4c 	movb   $0x4c,0x1c6(%eax)
  103173:	c6 80 72 01 00 00 6d 	movb   $0x6d,0x172(%eax)
  10317a:	c6 80 d2 01 00 00 4d 	movb   $0x4d,0x1d2(%eax)
  103181:	c6 80 71 01 00 00 6e 	movb   $0x6e,0x171(%eax)
  103188:	c6 80 d1 01 00 00 4e 	movb   $0x4e,0x1d1(%eax)
  10318f:	c6 80 58 01 00 00 6f 	movb   $0x6f,0x158(%eax)
  103196:	c6 80 b8 01 00 00 4f 	movb   $0x4f,0x1b8(%eax)
  10319d:	c6 80 59 01 00 00 70 	movb   $0x70,0x159(%eax)
  1031a4:	c6 80 b9 01 00 00 50 	movb   $0x50,0x1b9(%eax)
  1031ab:	c6 80 50 01 00 00 71 	movb   $0x71,0x150(%eax)
  1031b2:	c6 80 b0 01 00 00 51 	movb   $0x51,0x1b0(%eax)
  1031b9:	c6 80 53 01 00 00 72 	movb   $0x72,0x153(%eax)
  1031c0:	c6 80 b3 01 00 00 52 	movb   $0x52,0x1b3(%eax)
  1031c7:	c6 80 5f 01 00 00 73 	movb   $0x73,0x15f(%eax)
  1031ce:	c6 80 bf 01 00 00 53 	movb   $0x53,0x1bf(%eax)
  1031d5:	c6 80 54 01 00 00 74 	movb   $0x74,0x154(%eax)
  1031dc:	c6 80 b4 01 00 00 54 	movb   $0x54,0x1b4(%eax)
  1031e3:	c6 80 56 01 00 00 75 	movb   $0x75,0x156(%eax)
  1031ea:	c6 80 b6 01 00 00 55 	movb   $0x55,0x1b6(%eax)
  1031f1:	c6 80 6f 01 00 00 76 	movb   $0x76,0x16f(%eax)
  1031f8:	c6 80 cf 01 00 00 56 	movb   $0x56,0x1cf(%eax)
  1031ff:	c6 80 51 01 00 00 77 	movb   $0x77,0x151(%eax)
  103206:	c6 80 b1 01 00 00 57 	movb   $0x57,0x1b1(%eax)
  10320d:	c6 80 6d 01 00 00 78 	movb   $0x78,0x16d(%eax)
  103214:	c6 80 cd 01 00 00 58 	movb   $0x58,0x1cd(%eax)
  10321b:	c6 80 55 01 00 00 79 	movb   $0x79,0x155(%eax)
  103222:	c6 80 b5 01 00 00 59 	movb   $0x59,0x1b5(%eax)
  103229:	c6 80 6c 01 00 00 7a 	movb   $0x7a,0x16c(%eax)
  103230:	c6 80 cc 01 00 00 5a 	movb   $0x5a,0x1cc(%eax)
  103237:	c6 80 4c 01 00 00 2d 	movb   $0x2d,0x14c(%eax)
  10323e:	c6 80 ac 01 00 00 5f 	movb   $0x5f,0x1ac(%eax)
  103245:	c6 80 4d 01 00 00 3d 	movb   $0x3d,0x14d(%eax)
  10324c:	c6 80 ad 01 00 00 2b 	movb   $0x2b,0x1ad(%eax)
  103253:	c6 80 5a 01 00 00 5b 	movb   $0x5b,0x15a(%eax)
  10325a:	c6 80 ba 01 00 00 7b 	movb   $0x7b,0x1ba(%eax)
  103261:	c6 80 5b 01 00 00 5d 	movb   $0x5d,0x15b(%eax)
  103268:	c6 80 bb 01 00 00 7d 	movb   $0x7d,0x1bb(%eax)
  10326f:	c6 80 5c 01 00 00 0a 	movb   $0xa,0x15c(%eax)
  103276:	c6 80 bc 01 00 00 0a 	movb   $0xa,0x1bc(%eax)
  10327d:	c6 80 67 01 00 00 3b 	movb   $0x3b,0x167(%eax)
  103284:	c6 80 c7 01 00 00 3a 	movb   $0x3a,0x1c7(%eax)
  10328b:	c6 80 68 01 00 00 27 	movb   $0x27,0x168(%eax)
  103292:	c6 80 c8 01 00 00 22 	movb   $0x22,0x1c8(%eax)
  103299:	c6 80 69 01 00 00 60 	movb   $0x60,0x169(%eax)
  1032a0:	c6 80 c9 01 00 00 7e 	movb   $0x7e,0x1c9(%eax)
  1032a7:	c6 80 6b 01 00 00 5c 	movb   $0x5c,0x16b(%eax)
  1032ae:	c6 80 cb 01 00 00 7c 	movb   $0x7c,0x1cb(%eax)
  1032b5:	c6 80 73 01 00 00 2c 	movb   $0x2c,0x173(%eax)
  1032bc:	c6 80 d3 01 00 00 3c 	movb   $0x3c,0x1d3(%eax)
  1032c3:	c6 80 74 01 00 00 2e 	movb   $0x2e,0x174(%eax)
  1032ca:	c6 80 d4 01 00 00 3e 	movb   $0x3e,0x1d4(%eax)
  1032d1:	c6 80 75 01 00 00 2f 	movb   $0x2f,0x175(%eax)
  1032d8:	c6 80 d5 01 00 00 3f 	movb   $0x3f,0x1d5(%eax)
  1032df:	c6 80 79 01 00 00 20 	movb   $0x20,0x179(%eax)
  1032e6:	c6 80 d9 01 00 00 20 	movb   $0x20,0x1d9(%eax)
  1032ed:	90                   	nop
  1032ee:	c9                   	leave  
  1032ef:	c3                   	ret    

001032f0 <getKeyCode>:
  1032f0:	55                   	push   %ebp
  1032f1:	89 e5                	mov    %esp,%ebp
  1032f3:	83 ec 10             	sub    $0x10,%esp
  1032f6:	e8 4a d1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1032fb:	05 05 3d 00 00       	add    $0x3d05,%eax
  103300:	6a 60                	push   $0x60
  103302:	e8 7e fc ff ff       	call   102f85 <inByte>
  103307:	83 c4 04             	add    $0x4,%esp
  10330a:	0f b6 c0             	movzbl %al,%eax
  10330d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103310:	6a 61                	push   $0x61
  103312:	e8 6e fc ff ff       	call   102f85 <inByte>
  103317:	83 c4 04             	add    $0x4,%esp
  10331a:	0f b6 c0             	movzbl %al,%eax
  10331d:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103320:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103323:	83 c8 80             	or     $0xffffff80,%eax
  103326:	0f be c0             	movsbl %al,%eax
  103329:	50                   	push   %eax
  10332a:	6a 61                	push   $0x61
  10332c:	e8 79 fc ff ff       	call   102faa <outByte>
  103331:	83 c4 08             	add    $0x8,%esp
  103334:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103337:	0f be c0             	movsbl %al,%eax
  10333a:	50                   	push   %eax
  10333b:	6a 61                	push   $0x61
  10333d:	e8 68 fc ff ff       	call   102faa <outByte>
  103342:	83 c4 08             	add    $0x8,%esp
  103345:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  10334c:	77 05                	ja     103353 <getKeyCode+0x63>
  10334e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103351:	eb 05                	jmp    103358 <getKeyCode+0x68>
  103353:	b8 00 00 00 00       	mov    $0x0,%eax
  103358:	c9                   	leave  
  103359:	c3                   	ret    

0010335a <switchKeyboard>:
  10335a:	55                   	push   %ebp
  10335b:	89 e5                	mov    %esp,%ebp
  10335d:	e8 e3 d0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103362:	05 9e 3c 00 00       	add    $0x3c9e,%eax
  103367:	8b 88 fc 01 00 00    	mov    0x1fc(%eax),%ecx
  10336d:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  103373:	39 d1                	cmp    %edx,%ecx
  103375:	75 0e                	jne    103385 <switchKeyboard+0x2b>
  103377:	8d 90 a0 01 00 00    	lea    0x1a0(%eax),%edx
  10337d:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  103383:	eb 0c                	jmp    103391 <switchKeyboard+0x37>
  103385:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  10338b:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  103391:	90                   	nop
  103392:	5d                   	pop    %ebp
  103393:	c3                   	ret    

00103394 <getChar>:
  103394:	55                   	push   %ebp
  103395:	89 e5                	mov    %esp,%ebp
  103397:	53                   	push   %ebx
  103398:	e8 98 d4 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  10339d:	81 c3 63 3c 00 00    	add    $0x3c63,%ebx
  1033a3:	8b 45 08             	mov    0x8(%ebp),%eax
  1033a6:	83 f8 3a             	cmp    $0x3a,%eax
  1033a9:	74 32                	je     1033dd <getChar+0x49>
  1033ab:	83 f8 3a             	cmp    $0x3a,%eax
  1033ae:	77 0f                	ja     1033bf <getChar+0x2b>
  1033b0:	83 f8 2a             	cmp    $0x2a,%eax
  1033b3:	74 21                	je     1033d6 <getChar+0x42>
  1033b5:	83 f8 36             	cmp    $0x36,%eax
  1033b8:	74 1c                	je     1033d6 <getChar+0x42>
  1033ba:	e9 87 00 00 00       	jmp    103446 <getChar+0xb2>
  1033bf:	3d b6 00 00 00       	cmp    $0xb6,%eax
  1033c4:	74 10                	je     1033d6 <getChar+0x42>
  1033c6:	3d ba 00 00 00       	cmp    $0xba,%eax
  1033cb:	74 42                	je     10340f <getChar+0x7b>
  1033cd:	3d aa 00 00 00       	cmp    $0xaa,%eax
  1033d2:	74 02                	je     1033d6 <getChar+0x42>
  1033d4:	eb 70                	jmp    103446 <getChar+0xb2>
  1033d6:	e8 7f ff ff ff       	call   10335a <switchKeyboard>
  1033db:	eb 69                	jmp    103446 <getChar+0xb2>
  1033dd:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  1033e3:	85 c0                	test   %eax,%eax
  1033e5:	75 11                	jne    1033f8 <getChar+0x64>
  1033e7:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  1033ee:	00 00 00 
  1033f1:	e8 64 ff ff ff       	call   10335a <switchKeyboard>
  1033f6:	eb 4a                	jmp    103442 <getChar+0xae>
  1033f8:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  1033fe:	83 f8 01             	cmp    $0x1,%eax
  103401:	75 3f                	jne    103442 <getChar+0xae>
  103403:	c7 83 00 02 00 00 02 	movl   $0x2,0x200(%ebx)
  10340a:	00 00 00 
  10340d:	eb 33                	jmp    103442 <getChar+0xae>
  10340f:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  103415:	83 f8 01             	cmp    $0x1,%eax
  103418:	75 0c                	jne    103426 <getChar+0x92>
  10341a:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  103421:	00 00 00 
  103424:	eb 1f                	jmp    103445 <getChar+0xb1>
  103426:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  10342c:	83 f8 02             	cmp    $0x2,%eax
  10342f:	75 14                	jne    103445 <getChar+0xb1>
  103431:	c7 83 00 02 00 00 00 	movl   $0x0,0x200(%ebx)
  103438:	00 00 00 
  10343b:	e8 1a ff ff ff       	call   10335a <switchKeyboard>
  103440:	eb 03                	jmp    103445 <getChar+0xb1>
  103442:	90                   	nop
  103443:	eb 01                	jmp    103446 <getChar+0xb2>
  103445:	90                   	nop
  103446:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  10344a:	76 04                	jbe    103450 <getChar+0xbc>
  10344c:	b0 00                	mov    $0x0,%al
  10344e:	eb 0d                	jmp    10345d <getChar+0xc9>
  103450:	8b 93 fc 01 00 00    	mov    0x1fc(%ebx),%edx
  103456:	8b 45 08             	mov    0x8(%ebp),%eax
  103459:	01 d0                	add    %edx,%eax
  10345b:	8a 00                	mov    (%eax),%al
  10345d:	5b                   	pop    %ebx
  10345e:	5d                   	pop    %ebp
  10345f:	c3                   	ret    

00103460 <waitForInterrupt>:
  103460:	55                   	push   %ebp
  103461:	89 e5                	mov    %esp,%ebp
  103463:	e8 dd cf ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103468:	05 98 3b 00 00       	add    $0x3b98,%eax
  10346d:	f4                   	hlt    
  10346e:	90                   	nop
  10346f:	5d                   	pop    %ebp
  103470:	c3                   	ret    

00103471 <enableInterrupt>:
  103471:	55                   	push   %ebp
  103472:	89 e5                	mov    %esp,%ebp
  103474:	e8 cc cf ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103479:	05 87 3b 00 00       	add    $0x3b87,%eax
  10347e:	fb                   	sti    
  10347f:	90                   	nop
  103480:	5d                   	pop    %ebp
  103481:	c3                   	ret    

00103482 <setGdt>:
  103482:	55                   	push   %ebp
  103483:	89 e5                	mov    %esp,%ebp
  103485:	e8 bb cf ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10348a:	05 76 3b 00 00       	add    $0x3b76,%eax
  10348f:	8b 55 0c             	mov    0xc(%ebp),%edx
  103492:	4a                   	dec    %edx
  103493:	66 89 90 08 02 00 00 	mov    %dx,0x208(%eax)
  10349a:	8b 55 08             	mov    0x8(%ebp),%edx
  10349d:	66 89 90 0a 02 00 00 	mov    %dx,0x20a(%eax)
  1034a4:	8b 55 08             	mov    0x8(%ebp),%edx
  1034a7:	c1 ea 10             	shr    $0x10,%edx
  1034aa:	66 89 90 0c 02 00 00 	mov    %dx,0x20c(%eax)
  1034b1:	8d 80 08 02 00 00    	lea    0x208(%eax),%eax
  1034b7:	0f 01 10             	lgdtl  (%eax)
  1034ba:	90                   	nop
  1034bb:	5d                   	pop    %ebp
  1034bc:	c3                   	ret    

001034bd <lLdt>:
  1034bd:	55                   	push   %ebp
  1034be:	89 e5                	mov    %esp,%ebp
  1034c0:	83 ec 04             	sub    $0x4,%esp
  1034c3:	e8 7d cf ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1034c8:	05 38 3b 00 00       	add    $0x3b38,%eax
  1034cd:	8b 45 08             	mov    0x8(%ebp),%eax
  1034d0:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1034d4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1034d7:	0f 00 d0             	lldt   %ax
  1034da:	90                   	nop
  1034db:	c9                   	leave  
  1034dc:	c3                   	ret    

001034dd <initSeg>:
  1034dd:	55                   	push   %ebp
  1034de:	89 e5                	mov    %esp,%ebp
  1034e0:	56                   	push   %esi
  1034e1:	53                   	push   %ebx
  1034e2:	83 ec 14             	sub    $0x14,%esp
  1034e5:	e8 4b d3 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1034ea:	81 c3 16 3b 00 00    	add    $0x3b16,%ebx
  1034f0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1034f7:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034fd:	66 c7 40 08 ff ff    	movw   $0xffff,0x8(%eax)
  103503:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103509:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%eax)
  10350f:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103515:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
  103519:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10351f:	8a 50 0d             	mov    0xd(%eax),%dl
  103522:	83 e2 f0             	and    $0xfffffff0,%edx
  103525:	83 ca 0a             	or     $0xa,%edx
  103528:	88 50 0d             	mov    %dl,0xd(%eax)
  10352b:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103531:	8a 50 0d             	mov    0xd(%eax),%dl
  103534:	83 ca 10             	or     $0x10,%edx
  103537:	88 50 0d             	mov    %dl,0xd(%eax)
  10353a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103540:	8a 50 0d             	mov    0xd(%eax),%dl
  103543:	83 e2 9f             	and    $0xffffff9f,%edx
  103546:	88 50 0d             	mov    %dl,0xd(%eax)
  103549:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10354f:	8a 50 0d             	mov    0xd(%eax),%dl
  103552:	83 ca 80             	or     $0xffffff80,%edx
  103555:	88 50 0d             	mov    %dl,0xd(%eax)
  103558:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10355e:	8a 50 0e             	mov    0xe(%eax),%dl
  103561:	83 ca 0f             	or     $0xf,%edx
  103564:	88 50 0e             	mov    %dl,0xe(%eax)
  103567:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10356d:	8a 50 0e             	mov    0xe(%eax),%dl
  103570:	83 e2 ef             	and    $0xffffffef,%edx
  103573:	88 50 0e             	mov    %dl,0xe(%eax)
  103576:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10357c:	8a 50 0e             	mov    0xe(%eax),%dl
  10357f:	83 e2 df             	and    $0xffffffdf,%edx
  103582:	88 50 0e             	mov    %dl,0xe(%eax)
  103585:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10358b:	8a 50 0e             	mov    0xe(%eax),%dl
  10358e:	83 ca 40             	or     $0x40,%edx
  103591:	88 50 0e             	mov    %dl,0xe(%eax)
  103594:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10359a:	8a 50 0e             	mov    0xe(%eax),%dl
  10359d:	83 ca 80             	or     $0xffffff80,%edx
  1035a0:	88 50 0e             	mov    %dl,0xe(%eax)
  1035a3:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1035a9:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  1035ad:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1035b3:	66 c7 40 10 ff ff    	movw   $0xffff,0x10(%eax)
  1035b9:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1035bf:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
  1035c5:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1035cb:	c6 40 14 00          	movb   $0x0,0x14(%eax)
  1035cf:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1035d5:	8a 50 15             	mov    0x15(%eax),%dl
  1035d8:	83 e2 f0             	and    $0xfffffff0,%edx
  1035db:	83 ca 02             	or     $0x2,%edx
  1035de:	88 50 15             	mov    %dl,0x15(%eax)
  1035e1:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1035e7:	8a 50 15             	mov    0x15(%eax),%dl
  1035ea:	83 ca 10             	or     $0x10,%edx
  1035ed:	88 50 15             	mov    %dl,0x15(%eax)
  1035f0:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1035f6:	8a 50 15             	mov    0x15(%eax),%dl
  1035f9:	83 e2 9f             	and    $0xffffff9f,%edx
  1035fc:	88 50 15             	mov    %dl,0x15(%eax)
  1035ff:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103605:	8a 50 15             	mov    0x15(%eax),%dl
  103608:	83 ca 80             	or     $0xffffff80,%edx
  10360b:	88 50 15             	mov    %dl,0x15(%eax)
  10360e:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103614:	8a 50 16             	mov    0x16(%eax),%dl
  103617:	83 ca 0f             	or     $0xf,%edx
  10361a:	88 50 16             	mov    %dl,0x16(%eax)
  10361d:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103623:	8a 50 16             	mov    0x16(%eax),%dl
  103626:	83 e2 ef             	and    $0xffffffef,%edx
  103629:	88 50 16             	mov    %dl,0x16(%eax)
  10362c:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103632:	8a 50 16             	mov    0x16(%eax),%dl
  103635:	83 e2 df             	and    $0xffffffdf,%edx
  103638:	88 50 16             	mov    %dl,0x16(%eax)
  10363b:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103641:	8a 50 16             	mov    0x16(%eax),%dl
  103644:	83 ca 40             	or     $0x40,%edx
  103647:	88 50 16             	mov    %dl,0x16(%eax)
  10364a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103650:	8a 50 16             	mov    0x16(%eax),%dl
  103653:	83 ca 80             	or     $0xffffff80,%edx
  103656:	88 50 16             	mov    %dl,0x16(%eax)
  103659:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10365f:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  103663:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  10366a:	e9 e1 01 00 00       	jmp    103850 <initSeg+0x373>
  10366f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103672:	01 c0                	add    %eax,%eax
  103674:	40                   	inc    %eax
  103675:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103678:	42                   	inc    %edx
  103679:	c1 e2 14             	shl    $0x14,%edx
  10367c:	c1 ea 10             	shr    $0x10,%edx
  10367f:	88 d1                	mov    %dl,%cl
  103681:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103684:	42                   	inc    %edx
  103685:	c1 e2 14             	shl    $0x14,%edx
  103688:	c1 ea 18             	shr    $0x18,%edx
  10368b:	88 55 e7             	mov    %dl,-0x19(%ebp)
  10368e:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103694:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  10369a:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036a0:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  1036a7:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036ad:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  1036b1:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036b7:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1036bb:	83 e1 f0             	and    $0xfffffff0,%ecx
  1036be:	89 ce                	mov    %ecx,%esi
  1036c0:	83 ce 0a             	or     $0xa,%esi
  1036c3:	89 f1                	mov    %esi,%ecx
  1036c5:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1036c9:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036cf:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1036d3:	83 c9 10             	or     $0x10,%ecx
  1036d6:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1036da:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036e0:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1036e4:	83 c9 60             	or     $0x60,%ecx
  1036e7:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1036eb:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036f1:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1036f5:	83 c9 80             	or     $0xffffff80,%ecx
  1036f8:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1036fc:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103702:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103706:	83 e1 f0             	and    $0xfffffff0,%ecx
  103709:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10370d:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103713:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103717:	83 e1 ef             	and    $0xffffffef,%ecx
  10371a:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10371e:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103724:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103728:	83 e1 df             	and    $0xffffffdf,%ecx
  10372b:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10372f:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103735:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103739:	83 c9 40             	or     $0x40,%ecx
  10373c:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103740:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103746:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10374a:	83 c9 80             	or     $0xffffff80,%ecx
  10374d:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103751:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103757:	8a 4d e7             	mov    -0x19(%ebp),%cl
  10375a:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  10375e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103761:	40                   	inc    %eax
  103762:	01 c0                	add    %eax,%eax
  103764:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103767:	42                   	inc    %edx
  103768:	c1 e2 14             	shl    $0x14,%edx
  10376b:	c1 ea 10             	shr    $0x10,%edx
  10376e:	88 d1                	mov    %dl,%cl
  103770:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103773:	42                   	inc    %edx
  103774:	c1 e2 14             	shl    $0x14,%edx
  103777:	c1 ea 18             	shr    $0x18,%edx
  10377a:	88 55 e7             	mov    %dl,-0x19(%ebp)
  10377d:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103783:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  103789:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  10378f:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  103796:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  10379c:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  1037a0:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1037a6:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1037aa:	83 e1 f0             	and    $0xfffffff0,%ecx
  1037ad:	89 ce                	mov    %ecx,%esi
  1037af:	83 ce 02             	or     $0x2,%esi
  1037b2:	89 f1                	mov    %esi,%ecx
  1037b4:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1037b8:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1037be:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1037c2:	83 c9 10             	or     $0x10,%ecx
  1037c5:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1037c9:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1037cf:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1037d3:	83 c9 60             	or     $0x60,%ecx
  1037d6:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1037da:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1037e0:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1037e4:	83 c9 80             	or     $0xffffff80,%ecx
  1037e7:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1037eb:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1037f1:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1037f5:	83 e1 f0             	and    $0xfffffff0,%ecx
  1037f8:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1037fc:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103802:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103806:	83 e1 ef             	and    $0xffffffef,%ecx
  103809:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10380d:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103813:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103817:	83 e1 df             	and    $0xffffffdf,%ecx
  10381a:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10381e:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103824:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103828:	83 c9 40             	or     $0x40,%ecx
  10382b:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10382f:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103835:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103839:	83 c9 80             	or     $0xffffff80,%ecx
  10383c:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103840:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103846:	8a 4d e7             	mov    -0x19(%ebp),%cl
  103849:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  10384d:	ff 45 f4             	incl   -0xc(%ebp)
  103850:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  103854:	0f 8e 15 fe ff ff    	jle    10366f <initSeg+0x192>
  10385a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103860:	66 c7 80 98 00 00 00 	movw   $0x63,0x98(%eax)
  103867:	63 00 
  103869:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  10386f:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103875:	66 89 82 9a 00 00 00 	mov    %ax,0x9a(%edx)
  10387c:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  103882:	c1 e8 10             	shr    $0x10,%eax
  103885:	88 c2                	mov    %al,%dl
  103887:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10388d:	88 90 9c 00 00 00    	mov    %dl,0x9c(%eax)
  103893:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103899:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  10389f:	83 e2 f0             	and    $0xfffffff0,%edx
  1038a2:	83 ca 09             	or     $0x9,%edx
  1038a5:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1038ab:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1038b1:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1038b7:	83 e2 ef             	and    $0xffffffef,%edx
  1038ba:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1038c0:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1038c6:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1038cc:	83 e2 9f             	and    $0xffffff9f,%edx
  1038cf:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1038d5:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1038db:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1038e1:	83 ca 80             	or     $0xffffff80,%edx
  1038e4:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1038ea:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1038f0:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  1038f6:	83 e2 f0             	and    $0xfffffff0,%edx
  1038f9:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  1038ff:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103905:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10390b:	83 e2 ef             	and    $0xffffffef,%edx
  10390e:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103914:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10391a:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103920:	83 e2 df             	and    $0xffffffdf,%edx
  103923:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103929:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10392f:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103935:	83 ca 40             	or     $0x40,%edx
  103938:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10393e:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103944:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10394a:	83 e2 7f             	and    $0x7f,%edx
  10394d:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103953:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  103959:	c1 e8 18             	shr    $0x18,%eax
  10395c:	88 c2                	mov    %al,%dl
  10395e:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103964:	88 90 9f 00 00 00    	mov    %dl,0x9f(%eax)
  10396a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103970:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  103976:	83 e2 ef             	and    $0xffffffef,%edx
  103979:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  10397f:	68 a0 00 00 00       	push   $0xa0
  103984:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10398a:	50                   	push   %eax
  10398b:	e8 f2 fa ff ff       	call   103482 <setGdt>
  103990:	83 c4 08             	add    $0x8,%esp
  103993:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  103999:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
  1039a0:	b8 98 00 00 00       	mov    $0x98,%eax
  1039a5:	0f 00 d8             	ltr    %ax
  1039a8:	b8 10 00 00 00       	mov    $0x10,%eax
  1039ad:	8e d8                	mov    %eax,%ds
  1039af:	b8 10 00 00 00       	mov    $0x10,%eax
  1039b4:	8e d0                	mov    %eax,%ss
  1039b6:	6a 00                	push   $0x0
  1039b8:	e8 00 fb ff ff       	call   1034bd <lLdt>
  1039bd:	83 c4 04             	add    $0x4,%esp
  1039c0:	90                   	nop
  1039c1:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1039c4:	5b                   	pop    %ebx
  1039c5:	5e                   	pop    %esi
  1039c6:	5d                   	pop    %ebp
  1039c7:	c3                   	ret    

001039c8 <initFS>:
  1039c8:	55                   	push   %ebp
  1039c9:	89 e5                	mov    %esp,%ebp
  1039cb:	53                   	push   %ebx
  1039cc:	83 ec 04             	sub    $0x4,%esp
  1039cf:	e8 71 ca ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1039d4:	05 2c 36 00 00       	add    $0x362c,%eax
  1039d9:	83 ec 0c             	sub    $0xc,%esp
  1039dc:	c7 c2 60 90 10 00    	mov    $0x109060,%edx
  1039e2:	52                   	push   %edx
  1039e3:	89 c3                	mov    %eax,%ebx
  1039e5:	e8 5f ca ff ff       	call   100449 <readSuperBlock>
  1039ea:	83 c4 10             	add    $0x10,%esp
  1039ed:	90                   	nop
  1039ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1039f1:	c9                   	leave  
  1039f2:	c3                   	ret    

001039f3 <initSem>:
  1039f3:	55                   	push   %ebp
  1039f4:	89 e5                	mov    %esp,%ebp
  1039f6:	53                   	push   %ebx
  1039f7:	83 ec 10             	sub    $0x10,%esp
  1039fa:	e8 46 ca ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1039ff:	05 01 36 00 00       	add    $0x3601,%eax
  103a04:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103a0b:	eb 7a                	jmp    103a87 <initSem+0x94>
  103a0d:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103a13:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103a16:	c1 e1 04             	shl    $0x4,%ecx
  103a19:	01 ca                	add    %ecx,%edx
  103a1b:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103a21:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103a27:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103a2a:	c1 e1 04             	shl    $0x4,%ecx
  103a2d:	01 ca                	add    %ecx,%edx
  103a2f:	83 c2 04             	add    $0x4,%edx
  103a32:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103a38:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103a3b:	89 d1                	mov    %edx,%ecx
  103a3d:	c1 e1 04             	shl    $0x4,%ecx
  103a40:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103a46:	01 ca                	add    %ecx,%edx
  103a48:	8d 4a 08             	lea    0x8(%edx),%ecx
  103a4b:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103a51:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103a54:	c1 e3 04             	shl    $0x4,%ebx
  103a57:	01 da                	add    %ebx,%edx
  103a59:	83 c2 08             	add    $0x8,%edx
  103a5c:	89 0a                	mov    %ecx,(%edx)
  103a5e:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103a61:	89 d1                	mov    %edx,%ecx
  103a63:	c1 e1 04             	shl    $0x4,%ecx
  103a66:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103a6c:	01 ca                	add    %ecx,%edx
  103a6e:	8d 4a 08             	lea    0x8(%edx),%ecx
  103a71:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103a77:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103a7a:	c1 e3 04             	shl    $0x4,%ebx
  103a7d:	01 da                	add    %ebx,%edx
  103a7f:	83 c2 0c             	add    $0xc,%edx
  103a82:	89 0a                	mov    %ecx,(%edx)
  103a84:	ff 45 f8             	incl   -0x8(%ebp)
  103a87:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  103a8b:	7e 80                	jle    103a0d <initSem+0x1a>
  103a8d:	90                   	nop
  103a8e:	83 c4 10             	add    $0x10,%esp
  103a91:	5b                   	pop    %ebx
  103a92:	5d                   	pop    %ebp
  103a93:	c3                   	ret    

00103a94 <initDev>:
  103a94:	55                   	push   %ebp
  103a95:	89 e5                	mov    %esp,%ebp
  103a97:	53                   	push   %ebx
  103a98:	83 ec 10             	sub    $0x10,%esp
  103a9b:	e8 a5 c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103aa0:	05 60 35 00 00       	add    $0x3560,%eax
  103aa5:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103aac:	eb 7a                	jmp    103b28 <initDev+0x94>
  103aae:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103ab4:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103ab7:	c1 e1 04             	shl    $0x4,%ecx
  103aba:	01 ca                	add    %ecx,%edx
  103abc:	c7 02 01 00 00 00    	movl   $0x1,(%edx)
  103ac2:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103ac8:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103acb:	c1 e1 04             	shl    $0x4,%ecx
  103ace:	01 ca                	add    %ecx,%edx
  103ad0:	83 c2 04             	add    $0x4,%edx
  103ad3:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103ad9:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103adc:	89 d1                	mov    %edx,%ecx
  103ade:	c1 e1 04             	shl    $0x4,%ecx
  103ae1:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103ae7:	01 ca                	add    %ecx,%edx
  103ae9:	8d 4a 08             	lea    0x8(%edx),%ecx
  103aec:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103af2:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103af5:	c1 e3 04             	shl    $0x4,%ebx
  103af8:	01 da                	add    %ebx,%edx
  103afa:	83 c2 08             	add    $0x8,%edx
  103afd:	89 0a                	mov    %ecx,(%edx)
  103aff:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103b02:	89 d1                	mov    %edx,%ecx
  103b04:	c1 e1 04             	shl    $0x4,%ecx
  103b07:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103b0d:	01 ca                	add    %ecx,%edx
  103b0f:	8d 4a 08             	lea    0x8(%edx),%ecx
  103b12:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103b18:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103b1b:	c1 e3 04             	shl    $0x4,%ebx
  103b1e:	01 da                	add    %ebx,%edx
  103b20:	83 c2 0c             	add    $0xc,%edx
  103b23:	89 0a                	mov    %ecx,(%edx)
  103b25:	ff 45 f8             	incl   -0x8(%ebp)
  103b28:	83 7d f8 03          	cmpl   $0x3,-0x8(%ebp)
  103b2c:	7e 80                	jle    103aae <initDev+0x1a>
  103b2e:	90                   	nop
  103b2f:	83 c4 10             	add    $0x10,%esp
  103b32:	5b                   	pop    %ebx
  103b33:	5d                   	pop    %ebp
  103b34:	c3                   	ret    

00103b35 <loadElf>:
  103b35:	55                   	push   %ebp
  103b36:	89 e5                	mov    %esp,%ebp
  103b38:	56                   	push   %esi
  103b39:	53                   	push   %ebx
  103b3a:	81 ec a0 00 00 00    	sub    $0xa0,%esp
  103b40:	e8 f0 cc ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103b45:	81 c3 bb 34 00 00    	add    $0x34bb,%ebx
  103b4b:	89 e0                	mov    %esp,%eax
  103b4d:	89 c6                	mov    %eax,%esi
  103b4f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103b56:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103b5d:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103b63:	8b 40 14             	mov    0x14(%eax),%eax
  103b66:	8d 50 ff             	lea    -0x1(%eax),%edx
  103b69:	89 55 e8             	mov    %edx,-0x18(%ebp)
  103b6c:	89 c2                	mov    %eax,%edx
  103b6e:	b8 10 00 00 00       	mov    $0x10,%eax
  103b73:	48                   	dec    %eax
  103b74:	01 d0                	add    %edx,%eax
  103b76:	b9 10 00 00 00       	mov    $0x10,%ecx
  103b7b:	ba 00 00 00 00       	mov    $0x0,%edx
  103b80:	f7 f1                	div    %ecx
  103b82:	6b c0 10             	imul   $0x10,%eax,%eax
  103b85:	29 c4                	sub    %eax,%esp
  103b87:	89 e0                	mov    %esp,%eax
  103b89:	83 c0 00             	add    $0x0,%eax
  103b8c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103b8f:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  103b96:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
  103b9d:	00 00 00 
  103ba0:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  103ba7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103bae:	83 ec 0c             	sub    $0xc,%esp
  103bb1:	8d 83 f9 d9 ff ff    	lea    -0x2607(%ebx),%eax
  103bb7:	50                   	push   %eax
  103bb8:	e8 4e 06 00 00       	call   10420b <putString>
  103bbd:	83 c4 10             	add    $0x10,%esp
  103bc0:	83 ec 0c             	sub    $0xc,%esp
  103bc3:	ff 75 08             	pushl  0x8(%ebp)
  103bc6:	e8 40 06 00 00       	call   10420b <putString>
  103bcb:	83 c4 10             	add    $0x10,%esp
  103bce:	83 ec 0c             	sub    $0xc,%esp
  103bd1:	6a 0a                	push   $0xa
  103bd3:	e8 fd 05 00 00       	call   1041d5 <putChar>
  103bd8:	83 c4 10             	add    $0x10,%esp
  103bdb:	ff 75 08             	pushl  0x8(%ebp)
  103bde:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
  103be4:	50                   	push   %eax
  103be5:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103beb:	50                   	push   %eax
  103bec:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103bf2:	50                   	push   %eax
  103bf3:	e8 8d c9 ff ff       	call   100585 <readInode>
  103bf8:	83 c4 10             	add    $0x10,%esp
  103bfb:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103bfe:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  103c02:	75 0a                	jne    103c0e <loadElf+0xd9>
  103c04:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103c09:	e9 5c 01 00 00       	jmp    103d6a <loadElf+0x235>
  103c0e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103c11:	50                   	push   %eax
  103c12:	6a 00                	push   $0x0
  103c14:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103c1a:	50                   	push   %eax
  103c1b:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103c21:	50                   	push   %eax
  103c22:	e8 53 c8 ff ff       	call   10047a <readBlock>
  103c27:	83 c4 10             	add    $0x10,%esp
  103c2a:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103c2d:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  103c31:	75 0a                	jne    103c3d <loadElf+0x108>
  103c33:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103c38:	e9 2d 01 00 00       	jmp    103d6a <loadElf+0x235>
  103c3d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103c40:	89 45 dc             	mov    %eax,-0x24(%ebp)
  103c43:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103c46:	8b 00                	mov    (%eax),%eax
  103c48:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  103c4d:	74 0a                	je     103c59 <loadElf+0x124>
  103c4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103c54:	e9 11 01 00 00       	jmp    103d6a <loadElf+0x235>
  103c59:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103c60:	eb 31                	jmp    103c93 <loadElf+0x15e>
  103c62:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103c68:	8b 40 14             	mov    0x14(%eax),%eax
  103c6b:	0f af 45 ec          	imul   -0x14(%ebp),%eax
  103c6f:	89 c2                	mov    %eax,%edx
  103c71:	8b 45 0c             	mov    0xc(%ebp),%eax
  103c74:	01 d0                	add    %edx,%eax
  103c76:	50                   	push   %eax
  103c77:	ff 75 ec             	pushl  -0x14(%ebp)
  103c7a:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103c80:	50                   	push   %eax
  103c81:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103c87:	50                   	push   %eax
  103c88:	e8 ed c7 ff ff       	call   10047a <readBlock>
  103c8d:	83 c4 10             	add    $0x10,%esp
  103c90:	ff 45 ec             	incl   -0x14(%ebp)
  103c93:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
  103c99:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  103c9c:	7c c4                	jl     103c62 <loadElf+0x12d>
  103c9e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103ca1:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103ca4:	8b 40 1c             	mov    0x1c(%eax),%eax
  103ca7:	01 d0                	add    %edx,%eax
  103ca9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103cac:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103cb3:	e9 90 00 00 00       	jmp    103d48 <loadElf+0x213>
  103cb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103cbb:	8b 00                	mov    (%eax),%eax
  103cbd:	83 f8 01             	cmp    $0x1,%eax
  103cc0:	75 7f                	jne    103d41 <loadElf+0x20c>
  103cc2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103cc5:	8b 50 08             	mov    0x8(%eax),%edx
  103cc8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103ccb:	8b 40 04             	mov    0x4(%eax),%eax
  103cce:	39 c2                	cmp    %eax,%edx
  103cd0:	74 6f                	je     103d41 <loadElf+0x20c>
  103cd2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103cd9:	eb 2b                	jmp    103d06 <loadElf+0x1d1>
  103cdb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103cde:	8b 50 04             	mov    0x4(%eax),%edx
  103ce1:	8b 45 0c             	mov    0xc(%ebp),%eax
  103ce4:	01 c2                	add    %eax,%edx
  103ce6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103ce9:	01 d0                	add    %edx,%eax
  103ceb:	89 c1                	mov    %eax,%ecx
  103ced:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103cf0:	8b 50 08             	mov    0x8(%eax),%edx
  103cf3:	8b 45 0c             	mov    0xc(%ebp),%eax
  103cf6:	01 c2                	add    %eax,%edx
  103cf8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103cfb:	01 d0                	add    %edx,%eax
  103cfd:	89 c2                	mov    %eax,%edx
  103cff:	8a 01                	mov    (%ecx),%al
  103d01:	88 02                	mov    %al,(%edx)
  103d03:	ff 45 f0             	incl   -0x10(%ebp)
  103d06:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103d09:	8b 50 10             	mov    0x10(%eax),%edx
  103d0c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103d0f:	39 c2                	cmp    %eax,%edx
  103d11:	77 c8                	ja     103cdb <loadElf+0x1a6>
  103d13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103d16:	8b 40 10             	mov    0x10(%eax),%eax
  103d19:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103d1c:	eb 16                	jmp    103d34 <loadElf+0x1ff>
  103d1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103d21:	8b 50 08             	mov    0x8(%eax),%edx
  103d24:	8b 45 0c             	mov    0xc(%ebp),%eax
  103d27:	01 c2                	add    %eax,%edx
  103d29:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103d2c:	01 d0                	add    %edx,%eax
  103d2e:	c6 00 00             	movb   $0x0,(%eax)
  103d31:	ff 45 f0             	incl   -0x10(%ebp)
  103d34:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103d37:	8b 50 14             	mov    0x14(%eax),%edx
  103d3a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103d3d:	39 c2                	cmp    %eax,%edx
  103d3f:	77 dd                	ja     103d1e <loadElf+0x1e9>
  103d41:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  103d45:	ff 45 ec             	incl   -0x14(%ebp)
  103d48:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103d4b:	8b 40 2c             	mov    0x2c(%eax),%eax
  103d4e:	0f b7 c0             	movzwl %ax,%eax
  103d51:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  103d54:	0f 8c 5e ff ff ff    	jl     103cb8 <loadElf+0x183>
  103d5a:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103d5d:	8b 50 18             	mov    0x18(%eax),%edx
  103d60:	8b 45 10             	mov    0x10(%ebp),%eax
  103d63:	89 10                	mov    %edx,(%eax)
  103d65:	b8 00 00 00 00       	mov    $0x0,%eax
  103d6a:	89 f4                	mov    %esi,%esp
  103d6c:	8d 65 f8             	lea    -0x8(%ebp),%esp
  103d6f:	5b                   	pop    %ebx
  103d70:	5e                   	pop    %esi
  103d71:	5d                   	pop    %ebp
  103d72:	c3                   	ret    

00103d73 <loadUMain>:
  103d73:	55                   	push   %ebp
  103d74:	89 e5                	mov    %esp,%ebp
  103d76:	53                   	push   %ebx
  103d77:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  103d7d:	e8 b3 ca ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103d82:	81 c3 7e 32 00 00    	add    $0x327e,%ebx
  103d88:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103d8f:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  103d96:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  103d9d:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  103da4:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  103dab:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  103db2:	00 00 00 
  103db5:	8d 83 00 da ff ff    	lea    -0x2600(%ebx),%eax
  103dbb:	50                   	push   %eax
  103dbc:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  103dc2:	50                   	push   %eax
  103dc3:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  103dc9:	50                   	push   %eax
  103dca:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103dd0:	50                   	push   %eax
  103dd1:	e8 af c7 ff ff       	call   100585 <readInode>
  103dd6:	83 c4 10             	add    $0x10,%esp
  103dd9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103de0:	eb 31                	jmp    103e13 <loadUMain+0xa0>
  103de2:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103de8:	8b 40 14             	mov    0x14(%eax),%eax
  103deb:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  103def:	89 c2                	mov    %eax,%edx
  103df1:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103df4:	01 d0                	add    %edx,%eax
  103df6:	50                   	push   %eax
  103df7:	ff 75 f4             	pushl  -0xc(%ebp)
  103dfa:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  103e00:	50                   	push   %eax
  103e01:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103e07:	50                   	push   %eax
  103e08:	e8 6d c6 ff ff       	call   10047a <readBlock>
  103e0d:	83 c4 10             	add    $0x10,%esp
  103e10:	ff 45 f4             	incl   -0xc(%ebp)
  103e13:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  103e19:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  103e1c:	7c c4                	jl     103de2 <loadUMain+0x6f>
  103e1e:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103e21:	8b 40 18             	mov    0x18(%eax),%eax
  103e24:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103e27:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103e2a:	8b 40 1c             	mov    0x1c(%eax),%eax
  103e2d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103e30:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103e33:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103e36:	01 d0                	add    %edx,%eax
  103e38:	8b 40 04             	mov    0x4(%eax),%eax
  103e3b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103e3e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103e45:	eb 1c                	jmp    103e63 <loadUMain+0xf0>
  103e47:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103e4a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103e4d:	01 c2                	add    %eax,%edx
  103e4f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103e52:	01 d0                	add    %edx,%eax
  103e54:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  103e57:	8b 55 e8             	mov    -0x18(%ebp),%edx
  103e5a:	01 ca                	add    %ecx,%edx
  103e5c:	8a 00                	mov    (%eax),%al
  103e5e:	88 02                	mov    %al,(%edx)
  103e60:	ff 45 f4             	incl   -0xc(%ebp)
  103e63:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  103e6a:	7e db                	jle    103e47 <loadUMain+0xd4>
  103e6c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103e6f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103e72:	c9                   	leave  
  103e73:	c3                   	ret    

00103e74 <initProc>:
  103e74:	55                   	push   %ebp
  103e75:	89 e5                	mov    %esp,%ebp
  103e77:	53                   	push   %ebx
  103e78:	83 ec 14             	sub    $0x14,%esp
  103e7b:	e8 b5 c9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103e80:	81 c3 80 31 00 00    	add    $0x3180,%ebx
  103e86:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103e8d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103e94:	eb 3b                	jmp    103ed1 <initProc+0x5d>
  103e96:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  103e9c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103e9f:	89 d0                	mov    %edx,%eax
  103ea1:	01 c0                	add    %eax,%eax
  103ea3:	01 d0                	add    %edx,%eax
  103ea5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  103eac:	01 d0                	add    %edx,%eax
  103eae:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  103eb5:	01 d0                	add    %edx,%eax
  103eb7:	89 c2                	mov    %eax,%edx
  103eb9:	c1 e2 04             	shl    $0x4,%edx
  103ebc:	01 d0                	add    %edx,%eax
  103ebe:	c1 e0 02             	shl    $0x2,%eax
  103ec1:	01 c8                	add    %ecx,%eax
  103ec3:	05 54 40 00 00       	add    $0x4054,%eax
  103ec8:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  103ece:	ff 45 f4             	incl   -0xc(%ebp)
  103ed1:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  103ed5:	7e bf                	jle    103e96 <initProc+0x22>
  103ed7:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103edd:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  103ee3:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ee9:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  103eef:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ef5:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  103efb:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f01:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  103f07:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f0d:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  103f14:	00 00 00 
  103f17:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f1d:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  103f24:	00 00 00 
  103f27:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f2d:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  103f34:	00 00 00 
  103f37:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f3d:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  103f44:	00 00 00 
  103f47:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f4d:	8d 90 8c 80 00 00    	lea    0x808c(%eax),%edx
  103f53:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f59:	89 90 d8 80 00 00    	mov    %edx,0x80d8(%eax)
  103f5f:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f65:	8d 90 d8 80 00 00    	lea    0x80d8(%eax),%edx
  103f6b:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f71:	89 90 dc 80 00 00    	mov    %edx,0x80dc(%eax)
  103f77:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f7d:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  103f84:	00 00 00 
  103f87:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f8d:	c7 80 e4 80 00 00 00 	movl   $0x0,0x80e4(%eax)
  103f94:	00 00 00 
  103f97:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f9d:	c7 80 e8 80 00 00 00 	movl   $0x0,0x80e8(%eax)
  103fa4:	00 00 00 
  103fa7:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103fad:	c7 80 ec 80 00 00 01 	movl   $0x1,0x80ec(%eax)
  103fb4:	00 00 00 
  103fb7:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103fbd:	c7 80 d4 80 00 00 23 	movl   $0x23,0x80d4(%eax)
  103fc4:	00 00 00 
  103fc7:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103fcd:	c7 80 d0 80 00 00 00 	movl   $0x100000,0x80d0(%eax)
  103fd4:	00 10 00 
  103fd7:	9c                   	pushf  
  103fd8:	5a                   	pop    %edx
  103fd9:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103fdf:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  103fe5:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103feb:	8b 80 cc 80 00 00    	mov    0x80cc(%eax),%eax
  103ff1:	80 cc 02             	or     $0x2,%ah
  103ff4:	89 c2                	mov    %eax,%edx
  103ff6:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ffc:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  104002:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  104008:	c7 80 c8 80 00 00 1b 	movl   $0x1b,0x80c8(%eax)
  10400f:	00 00 00 
  104012:	e8 5c fd ff ff       	call   103d73 <loadUMain>
  104017:	89 c2                	mov    %eax,%edx
  104019:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  10401f:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  104025:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  10402b:	c7 80 98 80 00 00 23 	movl   $0x23,0x8098(%eax)
  104032:	00 00 00 
  104035:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  10403b:	c7 80 94 80 00 00 23 	movl   $0x23,0x8094(%eax)
  104042:	00 00 00 
  104045:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  10404b:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  104052:	00 00 00 
  104055:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  10405b:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  104062:	00 00 00 
  104065:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10406b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  104071:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  104077:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  10407d:	e8 ef f3 ff ff       	call   103471 <enableInterrupt>
  104082:	cd 20                	int    $0x20
  104084:	8b 8b 04 02 00 00    	mov    0x204(%ebx),%ecx
  10408a:	89 ca                	mov    %ecx,%edx
  10408c:	8d 04 12             	lea    (%edx,%edx,1),%eax
  10408f:	8d 14 08             	lea    (%eax,%ecx,1),%edx
  104092:	8d 04 12             	lea    (%edx,%edx,1),%eax
  104095:	8d 14 08             	lea    (%eax,%ecx,1),%edx
  104098:	c1 e2 02             	shl    $0x2,%edx
  10409b:	01 ca                	add    %ecx,%edx
  10409d:	89 d0                	mov    %edx,%eax
  10409f:	c1 e0 05             	shl    $0x5,%eax
  1040a2:	29 d0                	sub    %edx,%eax
  1040a4:	c1 e0 03             	shl    $0x3,%eax
  1040a7:	01 c8                	add    %ecx,%eax
  1040a9:	01 c0                	add    %eax,%eax
  1040ab:	01 c8                	add    %ecx,%eax
  1040ad:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1040b4:	01 d0                	add    %edx,%eax
  1040b6:	01 c0                	add    %eax,%eax
  1040b8:	01 c8                	add    %ecx,%eax
  1040ba:	c1 e0 02             	shl    $0x2,%eax
  1040bd:	01 c8                	add    %ecx,%eax
  1040bf:	c1 e0 04             	shl    $0x4,%eax
  1040c2:	01 c8                	add    %ecx,%eax
  1040c4:	01 c0                	add    %eax,%eax
  1040c6:	89 83 04 02 00 00    	mov    %eax,0x204(%ebx)
  1040cc:	8b 83 04 02 00 00    	mov    0x204(%ebx),%eax
  1040d2:	05 ad 8c 9b 00       	add    $0x9b8cad,%eax
  1040d7:	89 83 04 02 00 00    	mov    %eax,0x204(%ebx)
  1040dd:	e8 7e f3 ff ff       	call   103460 <waitForInterrupt>
  1040e2:	eb a0                	jmp    104084 <initProc+0x210>

001040e4 <inByte>:
  1040e4:	55                   	push   %ebp
  1040e5:	89 e5                	mov    %esp,%ebp
  1040e7:	83 ec 14             	sub    $0x14,%esp
  1040ea:	e8 56 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040ef:	05 11 2f 00 00       	add    $0x2f11,%eax
  1040f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1040f7:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  1040fb:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1040fe:	89 c2                	mov    %eax,%edx
  104100:	ec                   	in     (%dx),%al
  104101:	88 45 ff             	mov    %al,-0x1(%ebp)
  104104:	8a 45 ff             	mov    -0x1(%ebp),%al
  104107:	c9                   	leave  
  104108:	c3                   	ret    

00104109 <outByte>:
  104109:	55                   	push   %ebp
  10410a:	89 e5                	mov    %esp,%ebp
  10410c:	83 ec 08             	sub    $0x8,%esp
  10410f:	e8 31 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104114:	05 ec 2e 00 00       	add    $0x2eec,%eax
  104119:	8b 45 08             	mov    0x8(%ebp),%eax
  10411c:	8b 55 0c             	mov    0xc(%ebp),%edx
  10411f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  104123:	88 d0                	mov    %dl,%al
  104125:	88 45 f8             	mov    %al,-0x8(%ebp)
  104128:	8a 45 f8             	mov    -0x8(%ebp),%al
  10412b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10412e:	ee                   	out    %al,(%dx)
  10412f:	90                   	nop
  104130:	c9                   	leave  
  104131:	c3                   	ret    

00104132 <initSerial>:
  104132:	55                   	push   %ebp
  104133:	89 e5                	mov    %esp,%ebp
  104135:	e8 0b c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10413a:	05 c6 2e 00 00       	add    $0x2ec6,%eax
  10413f:	6a 00                	push   $0x0
  104141:	68 f9 03 00 00       	push   $0x3f9
  104146:	e8 be ff ff ff       	call   104109 <outByte>
  10414b:	83 c4 08             	add    $0x8,%esp
  10414e:	6a 80                	push   $0xffffff80
  104150:	68 fb 03 00 00       	push   $0x3fb
  104155:	e8 af ff ff ff       	call   104109 <outByte>
  10415a:	83 c4 08             	add    $0x8,%esp
  10415d:	6a 01                	push   $0x1
  10415f:	68 f8 03 00 00       	push   $0x3f8
  104164:	e8 a0 ff ff ff       	call   104109 <outByte>
  104169:	83 c4 08             	add    $0x8,%esp
  10416c:	6a 00                	push   $0x0
  10416e:	68 f9 03 00 00       	push   $0x3f9
  104173:	e8 91 ff ff ff       	call   104109 <outByte>
  104178:	83 c4 08             	add    $0x8,%esp
  10417b:	6a 03                	push   $0x3
  10417d:	68 fb 03 00 00       	push   $0x3fb
  104182:	e8 82 ff ff ff       	call   104109 <outByte>
  104187:	83 c4 08             	add    $0x8,%esp
  10418a:	6a c7                	push   $0xffffffc7
  10418c:	68 fa 03 00 00       	push   $0x3fa
  104191:	e8 73 ff ff ff       	call   104109 <outByte>
  104196:	83 c4 08             	add    $0x8,%esp
  104199:	6a 0b                	push   $0xb
  10419b:	68 fc 03 00 00       	push   $0x3fc
  1041a0:	e8 64 ff ff ff       	call   104109 <outByte>
  1041a5:	83 c4 08             	add    $0x8,%esp
  1041a8:	90                   	nop
  1041a9:	c9                   	leave  
  1041aa:	c3                   	ret    

001041ab <serialIdle>:
  1041ab:	55                   	push   %ebp
  1041ac:	89 e5                	mov    %esp,%ebp
  1041ae:	e8 92 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1041b3:	05 4d 2e 00 00       	add    $0x2e4d,%eax
  1041b8:	68 fd 03 00 00       	push   $0x3fd
  1041bd:	e8 22 ff ff ff       	call   1040e4 <inByte>
  1041c2:	83 c4 04             	add    $0x4,%esp
  1041c5:	0f b6 c0             	movzbl %al,%eax
  1041c8:	83 e0 20             	and    $0x20,%eax
  1041cb:	85 c0                	test   %eax,%eax
  1041cd:	0f 95 c0             	setne  %al
  1041d0:	0f b6 c0             	movzbl %al,%eax
  1041d3:	c9                   	leave  
  1041d4:	c3                   	ret    

001041d5 <putChar>:
  1041d5:	55                   	push   %ebp
  1041d6:	89 e5                	mov    %esp,%ebp
  1041d8:	83 ec 04             	sub    $0x4,%esp
  1041db:	e8 65 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1041e0:	05 20 2e 00 00       	add    $0x2e20,%eax
  1041e5:	8b 45 08             	mov    0x8(%ebp),%eax
  1041e8:	88 45 fc             	mov    %al,-0x4(%ebp)
  1041eb:	90                   	nop
  1041ec:	e8 ba ff ff ff       	call   1041ab <serialIdle>
  1041f1:	83 f8 01             	cmp    $0x1,%eax
  1041f4:	75 f6                	jne    1041ec <putChar+0x17>
  1041f6:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
  1041fa:	50                   	push   %eax
  1041fb:	68 f8 03 00 00       	push   $0x3f8
  104200:	e8 04 ff ff ff       	call   104109 <outByte>
  104205:	83 c4 08             	add    $0x8,%esp
  104208:	90                   	nop
  104209:	c9                   	leave  
  10420a:	c3                   	ret    

0010420b <putString>:
  10420b:	55                   	push   %ebp
  10420c:	89 e5                	mov    %esp,%ebp
  10420e:	83 ec 10             	sub    $0x10,%esp
  104211:	e8 2f c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104216:	05 ea 2d 00 00       	add    $0x2dea,%eax
  10421b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104222:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104226:	74 30                	je     104258 <putString+0x4d>
  104228:	eb 1e                	jmp    104248 <putString+0x3d>
  10422a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10422d:	8d 50 01             	lea    0x1(%eax),%edx
  104230:	89 55 fc             	mov    %edx,-0x4(%ebp)
  104233:	89 c2                	mov    %eax,%edx
  104235:	8b 45 08             	mov    0x8(%ebp),%eax
  104238:	01 d0                	add    %edx,%eax
  10423a:	8a 00                	mov    (%eax),%al
  10423c:	0f be c0             	movsbl %al,%eax
  10423f:	50                   	push   %eax
  104240:	e8 90 ff ff ff       	call   1041d5 <putChar>
  104245:	83 c4 04             	add    $0x4,%esp
  104248:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10424b:	8b 45 08             	mov    0x8(%ebp),%eax
  10424e:	01 d0                	add    %edx,%eax
  104250:	8a 00                	mov    (%eax),%al
  104252:	84 c0                	test   %al,%al
  104254:	75 d4                	jne    10422a <putString+0x1f>
  104256:	eb 01                	jmp    104259 <putString+0x4e>
  104258:	90                   	nop
  104259:	c9                   	leave  
  10425a:	c3                   	ret    

0010425b <putInt>:
  10425b:	55                   	push   %ebp
  10425c:	89 e5                	mov    %esp,%ebp
  10425e:	83 ec 30             	sub    $0x30,%esp
  104261:	e8 df c1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104266:	05 9a 2d 00 00       	add    $0x2d9a,%eax
  10426b:	8d 45 dc             	lea    -0x24(%ebp),%eax
  10426e:	83 c0 1f             	add    $0x1f,%eax
  104271:	89 45 fc             	mov    %eax,-0x4(%ebp)
  104274:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104277:	c6 00 00             	movb   $0x0,(%eax)
  10427a:	ff 4d fc             	decl   -0x4(%ebp)
  10427d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104280:	c6 00 0a             	movb   $0xa,(%eax)
  104283:	8b 45 08             	mov    0x8(%ebp),%eax
  104286:	b9 0a 00 00 00       	mov    $0xa,%ecx
  10428b:	99                   	cltd   
  10428c:	f7 f9                	idiv   %ecx
  10428e:	89 d0                	mov    %edx,%eax
  104290:	83 c0 30             	add    $0x30,%eax
  104293:	ff 4d fc             	decl   -0x4(%ebp)
  104296:	88 c2                	mov    %al,%dl
  104298:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10429b:	88 10                	mov    %dl,(%eax)
  10429d:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1042a0:	b8 67 66 66 66       	mov    $0x66666667,%eax
  1042a5:	f7 e9                	imul   %ecx
  1042a7:	c1 fa 02             	sar    $0x2,%edx
  1042aa:	89 c8                	mov    %ecx,%eax
  1042ac:	c1 f8 1f             	sar    $0x1f,%eax
  1042af:	29 c2                	sub    %eax,%edx
  1042b1:	89 d0                	mov    %edx,%eax
  1042b3:	89 45 08             	mov    %eax,0x8(%ebp)
  1042b6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1042ba:	75 c7                	jne    104283 <putInt+0x28>
  1042bc:	ff 75 fc             	pushl  -0x4(%ebp)
  1042bf:	e8 47 ff ff ff       	call   10420b <putString>
  1042c4:	83 c4 04             	add    $0x4,%esp
  1042c7:	90                   	nop
  1042c8:	c9                   	leave  
  1042c9:	c3                   	ret    

001042ca <outByte>:
  1042ca:	55                   	push   %ebp
  1042cb:	89 e5                	mov    %esp,%ebp
  1042cd:	83 ec 08             	sub    $0x8,%esp
  1042d0:	e8 70 c1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1042d5:	05 2b 2d 00 00       	add    $0x2d2b,%eax
  1042da:	8b 45 08             	mov    0x8(%ebp),%eax
  1042dd:	8b 55 0c             	mov    0xc(%ebp),%edx
  1042e0:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1042e4:	88 d0                	mov    %dl,%al
  1042e6:	88 45 f8             	mov    %al,-0x8(%ebp)
  1042e9:	8a 45 f8             	mov    -0x8(%ebp),%al
  1042ec:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1042ef:	ee                   	out    %al,(%dx)
  1042f0:	90                   	nop
  1042f1:	c9                   	leave  
  1042f2:	c3                   	ret    

001042f3 <initTimer>:
  1042f3:	55                   	push   %ebp
  1042f4:	89 e5                	mov    %esp,%ebp
  1042f6:	83 ec 10             	sub    $0x10,%esp
  1042f9:	e8 47 c1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1042fe:	05 02 2d 00 00       	add    $0x2d02,%eax
  104303:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  10430a:	6a 34                	push   $0x34
  10430c:	6a 43                	push   $0x43
  10430e:	e8 b7 ff ff ff       	call   1042ca <outByte>
  104313:	83 c4 08             	add    $0x8,%esp
  104316:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104319:	25 ff 00 00 80       	and    $0x800000ff,%eax
  10431e:	85 c0                	test   %eax,%eax
  104320:	79 07                	jns    104329 <initTimer+0x36>
  104322:	48                   	dec    %eax
  104323:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  104328:	40                   	inc    %eax
  104329:	0f be c0             	movsbl %al,%eax
  10432c:	50                   	push   %eax
  10432d:	6a 40                	push   $0x40
  10432f:	e8 96 ff ff ff       	call   1042ca <outByte>
  104334:	83 c4 08             	add    $0x8,%esp
  104337:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10433a:	85 c0                	test   %eax,%eax
  10433c:	79 05                	jns    104343 <initTimer+0x50>
  10433e:	05 ff 00 00 00       	add    $0xff,%eax
  104343:	c1 f8 08             	sar    $0x8,%eax
  104346:	0f be c0             	movsbl %al,%eax
  104349:	50                   	push   %eax
  10434a:	6a 40                	push   $0x40
  10434c:	e8 79 ff ff ff       	call   1042ca <outByte>
  104351:	83 c4 08             	add    $0x8,%esp
  104354:	90                   	nop
  104355:	c9                   	leave  
  104356:	c3                   	ret    

00104357 <outByte>:
  104357:	55                   	push   %ebp
  104358:	89 e5                	mov    %esp,%ebp
  10435a:	83 ec 08             	sub    $0x8,%esp
  10435d:	e8 e3 c0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104362:	05 9e 2c 00 00       	add    $0x2c9e,%eax
  104367:	8b 45 08             	mov    0x8(%ebp),%eax
  10436a:	8b 55 0c             	mov    0xc(%ebp),%edx
  10436d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  104371:	88 d0                	mov    %dl,%al
  104373:	88 45 f8             	mov    %al,-0x8(%ebp)
  104376:	8a 45 f8             	mov    -0x8(%ebp),%al
  104379:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10437c:	ee                   	out    %al,(%dx)
  10437d:	90                   	nop
  10437e:	c9                   	leave  
  10437f:	c3                   	ret    

00104380 <initVga>:
  104380:	55                   	push   %ebp
  104381:	89 e5                	mov    %esp,%ebp
  104383:	83 ec 08             	sub    $0x8,%esp
  104386:	e8 ba c0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10438b:	05 75 2c 00 00       	add    $0x2c75,%eax
  104390:	c7 80 10 02 00 00 00 	movl   $0x0,0x210(%eax)
  104397:	00 00 00 
  10439a:	c7 80 14 02 00 00 00 	movl   $0x0,0x214(%eax)
  1043a1:	00 00 00 
  1043a4:	c7 80 18 02 00 00 00 	movl   $0x0,0x218(%eax)
  1043ab:	00 00 00 
  1043ae:	e8 12 00 00 00       	call   1043c5 <clearScreen>
  1043b3:	83 ec 08             	sub    $0x8,%esp
  1043b6:	6a 00                	push   $0x0
  1043b8:	6a 00                	push   $0x0
  1043ba:	e8 5a 00 00 00       	call   104419 <updateCursor>
  1043bf:	83 c4 10             	add    $0x10,%esp
  1043c2:	90                   	nop
  1043c3:	c9                   	leave  
  1043c4:	c3                   	ret    

001043c5 <clearScreen>:
  1043c5:	55                   	push   %ebp
  1043c6:	89 e5                	mov    %esp,%ebp
  1043c8:	83 ec 10             	sub    $0x10,%esp
  1043cb:	e8 75 c0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1043d0:	05 30 2c 00 00       	add    $0x2c30,%eax
  1043d5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1043dc:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1043e3:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  1043e9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1043f0:	eb 1b                	jmp    10440d <clearScreen+0x48>
  1043f2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1043f5:	01 c0                	add    %eax,%eax
  1043f7:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1043fa:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1043fd:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  104403:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  104407:	66 89 02             	mov    %ax,(%edx)
  10440a:	ff 45 fc             	incl   -0x4(%ebp)
  10440d:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  104414:	7e dc                	jle    1043f2 <clearScreen+0x2d>
  104416:	90                   	nop
  104417:	c9                   	leave  
  104418:	c3                   	ret    

00104419 <updateCursor>:
  104419:	55                   	push   %ebp
  10441a:	89 e5                	mov    %esp,%ebp
  10441c:	83 ec 10             	sub    $0x10,%esp
  10441f:	e8 21 c0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104424:	05 dc 2b 00 00       	add    $0x2bdc,%eax
  104429:	8b 55 08             	mov    0x8(%ebp),%edx
  10442c:	89 d0                	mov    %edx,%eax
  10442e:	c1 e0 02             	shl    $0x2,%eax
  104431:	01 d0                	add    %edx,%eax
  104433:	c1 e0 04             	shl    $0x4,%eax
  104436:	89 c2                	mov    %eax,%edx
  104438:	8b 45 0c             	mov    0xc(%ebp),%eax
  10443b:	01 d0                	add    %edx,%eax
  10443d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  104440:	6a 0f                	push   $0xf
  104442:	68 d4 03 00 00       	push   $0x3d4
  104447:	e8 0b ff ff ff       	call   104357 <outByte>
  10444c:	83 c4 08             	add    $0x8,%esp
  10444f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104452:	0f be c0             	movsbl %al,%eax
  104455:	50                   	push   %eax
  104456:	68 d5 03 00 00       	push   $0x3d5
  10445b:	e8 f7 fe ff ff       	call   104357 <outByte>
  104460:	83 c4 08             	add    $0x8,%esp
  104463:	6a 0e                	push   $0xe
  104465:	68 d4 03 00 00       	push   $0x3d4
  10446a:	e8 e8 fe ff ff       	call   104357 <outByte>
  10446f:	83 c4 08             	add    $0x8,%esp
  104472:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104475:	c1 f8 08             	sar    $0x8,%eax
  104478:	0f be c0             	movsbl %al,%eax
  10447b:	50                   	push   %eax
  10447c:	68 d5 03 00 00       	push   $0x3d5
  104481:	e8 d1 fe ff ff       	call   104357 <outByte>
  104486:	83 c4 08             	add    $0x8,%esp
  104489:	90                   	nop
  10448a:	c9                   	leave  
  10448b:	c3                   	ret    

0010448c <scrollScreen>:
  10448c:	55                   	push   %ebp
  10448d:	89 e5                	mov    %esp,%ebp
  10448f:	53                   	push   %ebx
  104490:	83 ec 10             	sub    $0x10,%esp
  104493:	e8 e5 ea ff ff       	call   102f7d <__x86.get_pc_thunk.dx>
  104498:	81 c2 68 2b 00 00    	add    $0x2b68,%edx
  10449e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1044a5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1044ac:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  1044b2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1044b9:	eb 2b                	jmp    1044e6 <scrollScreen+0x5a>
  1044bb:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1044be:	01 c0                	add    %eax,%eax
  1044c0:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1044c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1044c6:	05 00 80 0b 00       	add    $0xb8000,%eax
  1044cb:	66 8b 00             	mov    (%eax),%ax
  1044ce:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  1044d2:	c7 c1 60 d9 12 00    	mov    $0x12d960,%ecx
  1044d8:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  1044db:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  1044df:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  1044e3:	ff 45 f8             	incl   -0x8(%ebp)
  1044e6:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  1044ed:	7e cc                	jle    1044bb <scrollScreen+0x2f>
  1044ef:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1044f6:	eb 2f                	jmp    104527 <scrollScreen+0x9b>
  1044f8:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1044fb:	01 c0                	add    %eax,%eax
  1044fd:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104500:	8b 45 f8             	mov    -0x8(%ebp),%eax
  104503:	8d 48 50             	lea    0x50(%eax),%ecx
  104506:	c7 c0 60 d9 12 00    	mov    $0x12d960,%eax
  10450c:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  104510:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  104514:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104517:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  10451d:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  104521:	66 89 01             	mov    %ax,(%ecx)
  104524:	ff 45 f8             	incl   -0x8(%ebp)
  104527:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  10452e:	7e c8                	jle    1044f8 <scrollScreen+0x6c>
  104530:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  104536:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  10453d:	eb 1b                	jmp    10455a <scrollScreen+0xce>
  10453f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  104542:	01 c0                	add    %eax,%eax
  104544:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104547:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10454a:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  104550:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  104554:	66 89 02             	mov    %ax,(%edx)
  104557:	ff 45 f8             	incl   -0x8(%ebp)
  10455a:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  104561:	7e dc                	jle    10453f <scrollScreen+0xb3>
  104563:	90                   	nop
  104564:	83 c4 10             	add    $0x10,%esp
  104567:	5b                   	pop    %ebx
  104568:	5d                   	pop    %ebp
  104569:	c3                   	ret    

0010456a <waitForInterrupt>:
  10456a:	55                   	push   %ebp
  10456b:	89 e5                	mov    %esp,%ebp
  10456d:	e8 d3 be ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104572:	05 8e 2a 00 00       	add    $0x2a8e,%eax
  104577:	f4                   	hlt    
  104578:	90                   	nop
  104579:	5d                   	pop    %ebp
  10457a:	c3                   	ret    

0010457b <disableInterrupt>:
  10457b:	55                   	push   %ebp
  10457c:	89 e5                	mov    %esp,%ebp
  10457e:	e8 c2 be ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104583:	05 7d 2a 00 00       	add    $0x2a7d,%eax
  104588:	fa                   	cli    
  104589:	90                   	nop
  10458a:	5d                   	pop    %ebp
  10458b:	c3                   	ret    

0010458c <i2A>:
  10458c:	55                   	push   %ebp
  10458d:	89 e5                	mov    %esp,%ebp
  10458f:	83 ec 10             	sub    $0x10,%esp
  104592:	e8 ae be ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104597:	05 69 2a 00 00       	add    $0x2a69,%eax
  10459c:	8d 80 39 02 00 00    	lea    0x239(%eax),%eax
  1045a2:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1045a5:	8b 45 08             	mov    0x8(%ebp),%eax
  1045a8:	b9 0a 00 00 00       	mov    $0xa,%ecx
  1045ad:	99                   	cltd   
  1045ae:	f7 f9                	idiv   %ecx
  1045b0:	89 d0                	mov    %edx,%eax
  1045b2:	83 c0 30             	add    $0x30,%eax
  1045b5:	ff 4d fc             	decl   -0x4(%ebp)
  1045b8:	88 c2                	mov    %al,%dl
  1045ba:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1045bd:	88 10                	mov    %dl,(%eax)
  1045bf:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1045c2:	b8 67 66 66 66       	mov    $0x66666667,%eax
  1045c7:	f7 e9                	imul   %ecx
  1045c9:	c1 fa 02             	sar    $0x2,%edx
  1045cc:	89 c8                	mov    %ecx,%eax
  1045ce:	c1 f8 1f             	sar    $0x1f,%eax
  1045d1:	29 c2                	sub    %eax,%edx
  1045d3:	89 d0                	mov    %edx,%eax
  1045d5:	89 45 08             	mov    %eax,0x8(%ebp)
  1045d8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1045dc:	75 c7                	jne    1045a5 <i2A+0x19>
  1045de:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1045e1:	c9                   	leave  
  1045e2:	c3                   	ret    

001045e3 <append>:
  1045e3:	55                   	push   %ebp
  1045e4:	89 e5                	mov    %esp,%ebp
  1045e6:	53                   	push   %ebx
  1045e7:	e8 59 be ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1045ec:	05 14 2a 00 00       	add    $0x2a14,%eax
  1045f1:	eb 1a                	jmp    10460d <append+0x2a>
  1045f3:	8b 55 0c             	mov    0xc(%ebp),%edx
  1045f6:	8d 42 01             	lea    0x1(%edx),%eax
  1045f9:	89 45 0c             	mov    %eax,0xc(%ebp)
  1045fc:	8b 45 08             	mov    0x8(%ebp),%eax
  1045ff:	8b 00                	mov    (%eax),%eax
  104601:	8d 58 01             	lea    0x1(%eax),%ebx
  104604:	8b 4d 08             	mov    0x8(%ebp),%ecx
  104607:	89 19                	mov    %ebx,(%ecx)
  104609:	8a 12                	mov    (%edx),%dl
  10460b:	88 10                	mov    %dl,(%eax)
  10460d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104610:	8a 00                	mov    (%eax),%al
  104612:	84 c0                	test   %al,%al
  104614:	75 dd                	jne    1045f3 <append+0x10>
  104616:	90                   	nop
  104617:	5b                   	pop    %ebx
  104618:	5d                   	pop    %ebp
  104619:	c3                   	ret    

0010461a <displayMessage>:
  10461a:	55                   	push   %ebp
  10461b:	89 e5                	mov    %esp,%ebp
  10461d:	53                   	push   %ebx
  10461e:	83 ec 14             	sub    $0x14,%esp
  104621:	e8 0f c2 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  104626:	81 c3 da 29 00 00    	add    $0x29da,%ebx
  10462c:	8d 83 32 00 00 00    	lea    0x32(%ebx),%eax
  104632:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104635:	ff 75 08             	pushl  0x8(%ebp)
  104638:	8d 45 f4             	lea    -0xc(%ebp),%eax
  10463b:	50                   	push   %eax
  10463c:	e8 a2 ff ff ff       	call   1045e3 <append>
  104641:	83 c4 08             	add    $0x8,%esp
  104644:	8d 83 0d da ff ff    	lea    -0x25f3(%ebx),%eax
  10464a:	50                   	push   %eax
  10464b:	8d 45 f4             	lea    -0xc(%ebp),%eax
  10464e:	50                   	push   %eax
  10464f:	e8 8f ff ff ff       	call   1045e3 <append>
  104654:	83 c4 08             	add    $0x8,%esp
  104657:	ff 75 0c             	pushl  0xc(%ebp)
  10465a:	e8 2d ff ff ff       	call   10458c <i2A>
  10465f:	83 c4 04             	add    $0x4,%esp
  104662:	50                   	push   %eax
  104663:	8d 45 f4             	lea    -0xc(%ebp),%eax
  104666:	50                   	push   %eax
  104667:	e8 77 ff ff ff       	call   1045e3 <append>
  10466c:	83 c4 08             	add    $0x8,%esp
  10466f:	8d 83 0f da ff ff    	lea    -0x25f1(%ebx),%eax
  104675:	50                   	push   %eax
  104676:	8d 45 f4             	lea    -0xc(%ebp),%eax
  104679:	50                   	push   %eax
  10467a:	e8 64 ff ff ff       	call   1045e3 <append>
  10467f:	83 c4 08             	add    $0x8,%esp
  104682:	8d 83 20 00 00 00    	lea    0x20(%ebx),%eax
  104688:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10468b:	eb 1b                	jmp    1046a8 <displayMessage+0x8e>
  10468d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104690:	8a 00                	mov    (%eax),%al
  104692:	0f be c0             	movsbl %al,%eax
  104695:	83 ec 0c             	sub    $0xc,%esp
  104698:	50                   	push   %eax
  104699:	e8 37 fb ff ff       	call   1041d5 <putChar>
  10469e:	83 c4 10             	add    $0x10,%esp
  1046a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1046a4:	40                   	inc    %eax
  1046a5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1046a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1046ab:	8a 00                	mov    (%eax),%al
  1046ad:	84 c0                	test   %al,%al
  1046af:	75 dc                	jne    10468d <displayMessage+0x73>
  1046b1:	90                   	nop
  1046b2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1046b5:	c9                   	leave  
  1046b6:	c3                   	ret    

001046b7 <abort>:
  1046b7:	55                   	push   %ebp
  1046b8:	89 e5                	mov    %esp,%ebp
  1046ba:	83 ec 08             	sub    $0x8,%esp
  1046bd:	e8 83 bd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1046c2:	05 3e 29 00 00       	add    $0x293e,%eax
  1046c7:	e8 af fe ff ff       	call   10457b <disableInterrupt>
  1046cc:	83 ec 08             	sub    $0x8,%esp
  1046cf:	ff 75 0c             	pushl  0xc(%ebp)
  1046d2:	ff 75 08             	pushl  0x8(%ebp)
  1046d5:	e8 40 ff ff ff       	call   10461a <displayMessage>
  1046da:	83 c4 10             	add    $0x10,%esp
  1046dd:	e8 88 fe ff ff       	call   10456a <waitForInterrupt>
  1046e2:	eb f9                	jmp    1046dd <abort+0x26>

001046e4 <stringChr>:
  1046e4:	55                   	push   %ebp
  1046e5:	89 e5                	mov    %esp,%ebp
  1046e7:	83 ec 14             	sub    $0x14,%esp
  1046ea:	e8 56 bd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1046ef:	05 11 29 00 00       	add    $0x2911,%eax
  1046f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1046f7:	88 45 ec             	mov    %al,-0x14(%ebp)
  1046fa:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104701:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104705:	75 31                	jne    104738 <stringChr+0x54>
  104707:	8b 45 10             	mov    0x10(%ebp),%eax
  10470a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  104710:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104715:	eb 3c                	jmp    104753 <stringChr+0x6f>
  104717:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10471a:	8b 45 08             	mov    0x8(%ebp),%eax
  10471d:	01 d0                	add    %edx,%eax
  10471f:	8a 00                	mov    (%eax),%al
  104721:	38 45 ec             	cmp    %al,-0x14(%ebp)
  104724:	75 0f                	jne    104735 <stringChr+0x51>
  104726:	8b 45 10             	mov    0x10(%ebp),%eax
  104729:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10472c:	89 10                	mov    %edx,(%eax)
  10472e:	b8 00 00 00 00       	mov    $0x0,%eax
  104733:	eb 1e                	jmp    104753 <stringChr+0x6f>
  104735:	ff 45 fc             	incl   -0x4(%ebp)
  104738:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10473b:	8b 45 08             	mov    0x8(%ebp),%eax
  10473e:	01 d0                	add    %edx,%eax
  104740:	8a 00                	mov    (%eax),%al
  104742:	84 c0                	test   %al,%al
  104744:	75 d1                	jne    104717 <stringChr+0x33>
  104746:	8b 45 10             	mov    0x10(%ebp),%eax
  104749:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10474c:	89 10                	mov    %edx,(%eax)
  10474e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104753:	c9                   	leave  
  104754:	c3                   	ret    

00104755 <stringChrR>:
  104755:	55                   	push   %ebp
  104756:	89 e5                	mov    %esp,%ebp
  104758:	83 ec 14             	sub    $0x14,%esp
  10475b:	e8 e5 bc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104760:	05 a0 28 00 00       	add    $0x28a0,%eax
  104765:	8b 45 0c             	mov    0xc(%ebp),%eax
  104768:	88 45 ec             	mov    %al,-0x14(%ebp)
  10476b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104772:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104776:	75 13                	jne    10478b <stringChrR+0x36>
  104778:	8b 45 10             	mov    0x10(%ebp),%eax
  10477b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  104781:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104786:	eb 47                	jmp    1047cf <stringChrR+0x7a>
  104788:	ff 45 fc             	incl   -0x4(%ebp)
  10478b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10478e:	8b 45 08             	mov    0x8(%ebp),%eax
  104791:	01 d0                	add    %edx,%eax
  104793:	8a 00                	mov    (%eax),%al
  104795:	84 c0                	test   %al,%al
  104797:	75 ef                	jne    104788 <stringChrR+0x33>
  104799:	8b 45 10             	mov    0x10(%ebp),%eax
  10479c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10479f:	89 10                	mov    %edx,(%eax)
  1047a1:	eb 21                	jmp    1047c4 <stringChrR+0x6f>
  1047a3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1047a6:	8b 45 08             	mov    0x8(%ebp),%eax
  1047a9:	01 d0                	add    %edx,%eax
  1047ab:	8a 00                	mov    (%eax),%al
  1047ad:	38 45 ec             	cmp    %al,-0x14(%ebp)
  1047b0:	75 0f                	jne    1047c1 <stringChrR+0x6c>
  1047b2:	8b 45 10             	mov    0x10(%ebp),%eax
  1047b5:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1047b8:	89 10                	mov    %edx,(%eax)
  1047ba:	b8 00 00 00 00       	mov    $0x0,%eax
  1047bf:	eb 0e                	jmp    1047cf <stringChrR+0x7a>
  1047c1:	ff 4d fc             	decl   -0x4(%ebp)
  1047c4:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  1047c8:	79 d9                	jns    1047a3 <stringChrR+0x4e>
  1047ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1047cf:	c9                   	leave  
  1047d0:	c3                   	ret    

001047d1 <stringLen>:
  1047d1:	55                   	push   %ebp
  1047d2:	89 e5                	mov    %esp,%ebp
  1047d4:	83 ec 10             	sub    $0x10,%esp
  1047d7:	e8 69 bc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1047dc:	05 24 28 00 00       	add    $0x2824,%eax
  1047e1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1047e8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1047ec:	75 0a                	jne    1047f8 <stringLen+0x27>
  1047ee:	b8 00 00 00 00       	mov    $0x0,%eax
  1047f3:	eb 14                	jmp    104809 <stringLen+0x38>
  1047f5:	ff 45 fc             	incl   -0x4(%ebp)
  1047f8:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1047fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1047fe:	01 d0                	add    %edx,%eax
  104800:	8a 00                	mov    (%eax),%al
  104802:	84 c0                	test   %al,%al
  104804:	75 ef                	jne    1047f5 <stringLen+0x24>
  104806:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104809:	c9                   	leave  
  10480a:	c3                   	ret    

0010480b <stringCmp>:
  10480b:	55                   	push   %ebp
  10480c:	89 e5                	mov    %esp,%ebp
  10480e:	83 ec 10             	sub    $0x10,%esp
  104811:	e8 2f bc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104816:	05 ea 27 00 00       	add    $0x27ea,%eax
  10481b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104822:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104826:	74 06                	je     10482e <stringCmp+0x23>
  104828:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10482c:	75 3e                	jne    10486c <stringCmp+0x61>
  10482e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104833:	eb 44                	jmp    104879 <stringCmp+0x6e>
  104835:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104838:	8b 45 08             	mov    0x8(%ebp),%eax
  10483b:	01 d0                	add    %edx,%eax
  10483d:	8a 10                	mov    (%eax),%dl
  10483f:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  104842:	8b 45 0c             	mov    0xc(%ebp),%eax
  104845:	01 c8                	add    %ecx,%eax
  104847:	8a 00                	mov    (%eax),%al
  104849:	38 c2                	cmp    %al,%dl
  10484b:	74 07                	je     104854 <stringCmp+0x49>
  10484d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104852:	eb 25                	jmp    104879 <stringCmp+0x6e>
  104854:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104857:	8b 45 08             	mov    0x8(%ebp),%eax
  10485a:	01 d0                	add    %edx,%eax
  10485c:	8a 00                	mov    (%eax),%al
  10485e:	84 c0                	test   %al,%al
  104860:	75 07                	jne    104869 <stringCmp+0x5e>
  104862:	b8 00 00 00 00       	mov    $0x0,%eax
  104867:	eb 10                	jmp    104879 <stringCmp+0x6e>
  104869:	ff 45 fc             	incl   -0x4(%ebp)
  10486c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10486f:	3b 45 10             	cmp    0x10(%ebp),%eax
  104872:	75 c1                	jne    104835 <stringCmp+0x2a>
  104874:	b8 00 00 00 00       	mov    $0x0,%eax
  104879:	c9                   	leave  
  10487a:	c3                   	ret    

0010487b <stringCpy>:
  10487b:	55                   	push   %ebp
  10487c:	89 e5                	mov    %esp,%ebp
  10487e:	83 ec 10             	sub    $0x10,%esp
  104881:	e8 bf bb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104886:	05 7a 27 00 00       	add    $0x277a,%eax
  10488b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104892:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104896:	74 06                	je     10489e <stringCpy+0x23>
  104898:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10489c:	75 2c                	jne    1048ca <stringCpy+0x4f>
  10489e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1048a3:	eb 40                	jmp    1048e5 <stringCpy+0x6a>
  1048a5:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1048a8:	8b 45 08             	mov    0x8(%ebp),%eax
  1048ab:	01 d0                	add    %edx,%eax
  1048ad:	8a 00                	mov    (%eax),%al
  1048af:	84 c0                	test   %al,%al
  1048b1:	74 21                	je     1048d4 <stringCpy+0x59>
  1048b3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1048b6:	8b 45 08             	mov    0x8(%ebp),%eax
  1048b9:	01 d0                	add    %edx,%eax
  1048bb:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1048be:	8b 55 0c             	mov    0xc(%ebp),%edx
  1048c1:	01 ca                	add    %ecx,%edx
  1048c3:	8a 00                	mov    (%eax),%al
  1048c5:	88 02                	mov    %al,(%edx)
  1048c7:	ff 45 fc             	incl   -0x4(%ebp)
  1048ca:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1048cd:	3b 45 10             	cmp    0x10(%ebp),%eax
  1048d0:	75 d3                	jne    1048a5 <stringCpy+0x2a>
  1048d2:	eb 01                	jmp    1048d5 <stringCpy+0x5a>
  1048d4:	90                   	nop
  1048d5:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1048d8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1048db:	01 d0                	add    %edx,%eax
  1048dd:	c6 00 00             	movb   $0x0,(%eax)
  1048e0:	b8 00 00 00 00       	mov    $0x0,%eax
  1048e5:	c9                   	leave  
  1048e6:	c3                   	ret    

001048e7 <setBuffer>:
  1048e7:	55                   	push   %ebp
  1048e8:	89 e5                	mov    %esp,%ebp
  1048ea:	83 ec 14             	sub    $0x14,%esp
  1048ed:	e8 53 bb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1048f2:	05 0e 27 00 00       	add    $0x270e,%eax
  1048f7:	8b 45 10             	mov    0x10(%ebp),%eax
  1048fa:	88 45 ec             	mov    %al,-0x14(%ebp)
  1048fd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104904:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104908:	75 07                	jne    104911 <setBuffer+0x2a>
  10490a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10490f:	eb 26                	jmp    104937 <setBuffer+0x50>
  104911:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104918:	eb 10                	jmp    10492a <setBuffer+0x43>
  10491a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10491d:	8b 45 08             	mov    0x8(%ebp),%eax
  104920:	01 c2                	add    %eax,%edx
  104922:	8a 45 ec             	mov    -0x14(%ebp),%al
  104925:	88 02                	mov    %al,(%edx)
  104927:	ff 45 fc             	incl   -0x4(%ebp)
  10492a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10492d:	3b 45 0c             	cmp    0xc(%ebp),%eax
  104930:	7c e8                	jl     10491a <setBuffer+0x33>
  104932:	b8 00 00 00 00       	mov    $0x0,%eax
  104937:	c9                   	leave  
  104938:	c3                   	ret    

00104939 <kEntry>:
  104939:	55                   	push   %ebp
  10493a:	89 e5                	mov    %esp,%ebp
  10493c:	53                   	push   %ebx
  10493d:	83 ec 04             	sub    $0x4,%esp
  104940:	e8 f0 be ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  104945:	81 c3 bb 26 00 00    	add    $0x26bb,%ebx
  10494b:	e8 e2 f7 ff ff       	call   104132 <initSerial>
  104950:	e8 bf c0 ff ff       	call   100a14 <initIdt>
  104955:	e8 08 bf ff ff       	call   100862 <initIntr>
  10495a:	e8 7e eb ff ff       	call   1034dd <initSeg>
  10495f:	e8 1c fa ff ff       	call   104380 <initVga>
  104964:	e8 8a f9 ff ff       	call   1042f3 <initTimer>
  104969:	e8 65 e6 ff ff       	call   102fd3 <initKeyTable>
  10496e:	e8 55 f0 ff ff       	call   1039c8 <initFS>
  104973:	e8 7b f0 ff ff       	call   1039f3 <initSem>
  104978:	e8 17 f1 ff ff       	call   103a94 <initDev>
  10497d:	e8 f2 f4 ff ff       	call   103e74 <initProc>
  104982:	90                   	nop
  104983:	83 c4 04             	add    $0x4,%esp
  104986:	5b                   	pop    %ebx
  104987:	5d                   	pop    %ebp
  104988:	c3                   	ret    

00104989 <irqEmpty>:
  104989:	6a 00                	push   $0x0
  10498b:	6a ff                	push   $0xffffffff
  10498d:	eb 39                	jmp    1049c8 <asmDoIrq>

0010498f <irqErrorCode>:
  10498f:	6a ff                	push   $0xffffffff
  104991:	eb 35                	jmp    1049c8 <asmDoIrq>

00104993 <irqDoubleFault>:
  104993:	6a ff                	push   $0xffffffff
  104995:	eb 31                	jmp    1049c8 <asmDoIrq>

00104997 <irqInvalidTSS>:
  104997:	6a ff                	push   $0xffffffff
  104999:	eb 2d                	jmp    1049c8 <asmDoIrq>

0010499b <irqSegNotPresent>:
  10499b:	6a ff                	push   $0xffffffff
  10499d:	eb 29                	jmp    1049c8 <asmDoIrq>

0010499f <irqStackSegFault>:
  10499f:	6a ff                	push   $0xffffffff
  1049a1:	eb 25                	jmp    1049c8 <asmDoIrq>

001049a3 <irqGProtectFault>:
  1049a3:	6a 0d                	push   $0xd
  1049a5:	eb 21                	jmp    1049c8 <asmDoIrq>

001049a7 <irqPageFault>:
  1049a7:	6a ff                	push   $0xffffffff
  1049a9:	eb 1d                	jmp    1049c8 <asmDoIrq>

001049ab <irqAlignCheck>:
  1049ab:	6a ff                	push   $0xffffffff
  1049ad:	eb 19                	jmp    1049c8 <asmDoIrq>

001049af <irqSecException>:
  1049af:	6a ff                	push   $0xffffffff
  1049b1:	eb 15                	jmp    1049c8 <asmDoIrq>

001049b3 <irqTimer>:
  1049b3:	6a 00                	push   $0x0
  1049b5:	6a 20                	push   $0x20
  1049b7:	eb 0f                	jmp    1049c8 <asmDoIrq>

001049b9 <irqKeyboard>:
  1049b9:	6a 00                	push   $0x0
  1049bb:	6a 21                	push   $0x21
  1049bd:	eb 09                	jmp    1049c8 <asmDoIrq>

001049bf <irqSyscall>:
  1049bf:	6a 00                	push   $0x0
  1049c1:	68 80 00 00 00       	push   $0x80
  1049c6:	eb 00                	jmp    1049c8 <asmDoIrq>

001049c8 <asmDoIrq>:
  1049c8:	60                   	pusha  
  1049c9:	1e                   	push   %ds
  1049ca:	06                   	push   %es
  1049cb:	0f a0                	push   %fs
  1049cd:	0f a8                	push   %gs
  1049cf:	54                   	push   %esp
  1049d0:	e8 2e c2 ff ff       	call   100c03 <irqHandle>
  1049d5:	83 c4 04             	add    $0x4,%esp
  1049d8:	0f a9                	pop    %gs
  1049da:	0f a1                	pop    %fs
  1049dc:	07                   	pop    %es
  1049dd:	1f                   	pop    %ds
  1049de:	61                   	popa   
  1049df:	83 c4 04             	add    $0x4,%esp
  1049e2:	83 c4 04             	add    $0x4,%esp
  1049e5:	cf                   	iret   
